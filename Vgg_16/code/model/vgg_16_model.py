# Copyright 2016 The TensorFlow Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================
"""Generic evaluation script that evaluates a model using a given dataset."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import math
import tensorflow as tf

from tensorflow.python.summary import summary
from tensorflow.python.training import monitored_session
from tensorflow.python.training import saver as tf_saver

from datasets import dataset_factory
from nets import nets_factory
from preprocessing import preprocessing_factory

slim = tf.contrib.slim

dataset_name='imagenet'
dataset_split_name='validation'
dataset_dir='/opt/dataset/imagenet/tf_records'
model_name='vgg_16'
labels_offset=1
batch_size=100
num_preprocessing_threads=4

def model_fn():
  tf.logging.set_verbosity(tf.logging.INFO)

  tf_global_step = slim.get_or_create_global_step()

  ######################
  # Select the dataset #
  ######################
  dataset = dataset_factory.get_dataset(dataset_name,
                                        dataset_split_name,
                                        dataset_dir)

  ####################
  # Select the model #
  ####################
  network_fn = nets_factory.get_network_fn(
      model_name,
      num_classes=(dataset.num_classes - labels_offset),
      is_training=False)

  ##############################################################
  # Create a dataset provider that loads data from the dataset #
  ##############################################################
  provider = slim.dataset_data_provider.DatasetDataProvider(
      dataset,
      shuffle=False,
      common_queue_capacity=2 * batch_size,
      common_queue_min=batch_size)
  [image, label] = provider.get(['image', 'label'])
  label -= labels_offset

  #####################################
  # Select the preprocessing function #
  #####################################
  preprocessing_name = model_name
  image_preprocessing_fn = preprocessing_factory.get_preprocessing(
      preprocessing_name,
      is_training=False)

  eval_image_size = network_fn.default_image_size

  image = image_preprocessing_fn(image, eval_image_size, eval_image_size)

  images, labels = tf.train.batch(
      [image, label],
      batch_size=batch_size,
      num_threads=num_preprocessing_threads,
      capacity=5 * batch_size)

  ####################
  # Define the model #
  ####################
  logits, _ = network_fn(images)

  variables_to_restore = slim.get_variables_to_restore()

  predictions = tf.argmax(logits, 1)
  org_labels = labels
  labels = tf.squeeze(labels)

  eval_metric_ops = {
      'Accuracy': slim.metrics.streaming_accuracy(predictions, labels),
      'Recall_5': slim.metrics.streaming_recall_at_k(logits, org_labels, 5)
  }
  return eval_metric_ops
