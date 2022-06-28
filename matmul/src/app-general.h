// #########################################################################
// AUTHOR: FKHM
// DATE: 2022/04/01
// COMPANY: MDH
// DESCRIPTION:
//
// #########################################################################

#ifndef _APP_GENERAL_H_INCLUDED
#define _APP_GENERAL_H_INCLUDED


#include <stddef.h> /* offsetof() */
#include <time.h> /* nanosleep() */
#include <stdio.h>
#include <stdint.h>
#include <sys/time.h>

#include "StopWatch.h"


/**************************************************************************************/
/* GCC inline assembly - Auxiliary Macros */
/**************************************************************************************/
#define _AVOL             __asm__ volatile 
#define _ANVL             __asm__ 
#define _INL              __always_inline 

#define _R1             "r"     /* argument 1 */
#define _RAC            "0"     /* argument 1 = dest*/
#define _R2             "r"     /* argument 2 */
#define _R3             "r"     /* argument 3 */
#define _RD             "=r"    /* result */
#define _RCLB       /*example: #define _RCLB :"%rax" // don't forget the colon! */

#define _XP(str)        #str
#define _AS0(_of)       _XP(prefetchnta _of(%%rax,%%rax))
#define _AS1(_of)       _XP(prefetchnta _of(%q0,%q0,1))
#define _AS2(_of)       _XP(prefetchnta _of(%q0,%q1,1))
#define _AS3(_of)       _XP(prefetchnta _of(%q0,%q2,1))
#define _JHERE          ";jmp 1f;1:"


// PUT ENABLE DEFINITIONS HERE 
// #define ACCEL_MEM_CLEAR_EN 
//


typedef struct accel_meta {
   uint64_t obj_addr; // base address of the object allocated
   uint64_t scs; // chechsums to validate
} accel_meta_t;


// PUT THE CONSTANT VALUES OF APP HERE
// REGISTER VALUES
#define ACCEL_GM_START_ADDR_P              0x40000000 //this value should be aligned with the start physical address that is specified 
//for the reserved memory into the device tree file (i.e., petalinux/zcu104-petalinux/project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi)
#define ACCEL_GM_END_ADDR_P                0x5FFFFFFF
#define ACCEL_MATRIX_ROWS                  3
#define ACCEL_MATRIX_COLUMNS               6 
#define ACCEL_MATRIX_GAIN                  2


#define N                                 ACCEL_MATRIX_ROWS * ACCEL_MATRIX_COLUMNS

// PUT COMMON FUNCTIONS HERE

#define TIMEZONESTART_HW(_z)              timezonestart_hw(_z)
#define TIMEZONESTOP_HW(_z)               timezonestop_hw(_z)

#define TIMEZONESTART(_z)                 TIMEZONESTART_HW(_z)
#define TIMEZONESTOP(_z)                  TIMEZONESTOP_HW(_z)

#define TIMEZONESTART_HW_REP(_z)          timezonestart_hw_rep(_z)
#define TIMEZONESTOP_HW_REP(_z, _rep)     timezonestop_hw_rep(_z, _rep)

#define TIMEZONESTART_REP(_z)             TIMEZONESTART_HW_REP(_z)
#define TIMEZONESTOP_REP(_z, _rep)        TIMEZONESTOP_HW_REP(_z, _rep)

struct timeval  tv;
long long start_time, time_in_mill;
struct timespec start, stop;


_INL static void timezonestart_hw(int zone)
{
  printf("TIMEZONESTART NUMBER %d LAUNCHED \n",zone);
  fflush(stdout);
  gettimeofday(&tv,NULL);
  time_in_mill= (tv.tv_sec) * 1000000 + (tv.tv_usec);
  start_time = time_in_mill;
}

_INL static long long timezonestop_hw(int zone)
{
  gettimeofday(&tv,NULL);
  time_in_mill = (tv.tv_sec) * 1000000 + (tv.tv_usec);
  printf("TIMEZONESTOP NUMBER %d LAUNCHED \n",zone);
  printf("[TIME]: EXECUTION TIME = %lld us\n",(time_in_mill - start_time));
  fflush(stdout);
  return (time_in_mill - start_time);
}

#define timezonestart(_zone) TIMEZONESTART(_zone)
#define timezonestop(_zone) TIMEZONESTOP(_zone)

struct timeval  tv_rep;
long long start_time_rep, time_in_mill_rep;
struct timespec start_rep, stop_rep;


_INL static void timezonestart_hw_rep(int zone)
{
  printf("TIMEZONESTART NUMBER %d LAUNCHED \n",zone);
  fflush(stdout);
  gettimeofday(&tv_rep,NULL);
  time_in_mill_rep= (tv_rep.tv_sec) * 1000000 + (tv_rep.tv_usec);
  start_time_rep = time_in_mill_rep;
}

_INL static void timezonestop_hw_rep(int zone, uint32_t repeat)
{
  gettimeofday(&tv_rep,NULL);
  time_in_mill_rep = (tv_rep.tv_sec) * 1000000 + (tv_rep.tv_usec);
  printf("TIMEZONESTOP NUMBER %d LAUNCHED \n",zone);
  printf("[TIME]: EXECUTION TIME = %lld us\n",(time_in_mill_rep - start_time_rep));
  fflush(stdout);
}

#define timezonestart_rep(_zone) TIMEZONESTART_REP(_zone)
#define timezonestop_rep(_zone, _repeat) TIMEZONESTOP_REP(_zone, _repeat)

#endif /* !_APP_GENERAL_H_INCLUDED */
