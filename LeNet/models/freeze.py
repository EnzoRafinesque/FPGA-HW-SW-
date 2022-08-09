from keras.models import load_model
model = load_model('/home/mdu/Desktop/work_repo/Vitis-AI/CNN/LeNet/models')
print(model.outputs)
# [<tf.Tensor 'dense_2/Softmax:0' shape=(?, 10) dtype=float32>]
print(model.inputs)
# [<tf.Tensor 'conv2d_1_input:0' shape=(?, 28, 28, 1) dtype=float32>]

for op in model.get_operations(): 
    print(op.name, op.outputs)
