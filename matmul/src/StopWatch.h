/*
 * StopWatch.h
 *
 *  Created on: 27 giu 2017
 *      Author: sandro
 */

#ifndef STOPWATCH_H_
#define STOPWATCH_H_

#include <chrono>
#include <string>
#include <iostream>

namespace util
{


class StopWatch
{
//	using InternalClock= std::chrono::system_clock;
	using InternalClock= std::chrono::steady_clock;
//	using InternalClock= std::chrono::high_resolution_clock;

	using Resolution= std::chrono::microseconds;
	//constexpr static double MicroToMilliScaleFactor= 1.0/1000.0;	//c++14??
	constexpr static double MicroToMilliScaleFactor= 1.0;	//c++14??
	//static const std::string strTimeUnit() { return " ms"; }
	static const std::string strTimeUnit() { return " us"; }

	InternalClock::time_point m_tSta;
	InternalClock::time_point m_tSto;
	enum class SWStatus { init, started, stopped };
	SWStatus m_status = {SWStatus::init};	//default initialization

    mutable double cachedValue;
public:
	StopWatch() = default;
	StopWatch(StopWatch const& ) = delete;	// NO COPY CONSTRUCTION
	StopWatch(StopWatch&& ) = default;
	StopWatch& operator=(StopWatch const& ) = delete;	// NO COPY ASSIGNMENT
	StopWatch& operator=(StopWatch&& ) = default;

	bool start();
	bool stop();

	//returns milliseconds elapsed, with microsecond resolution
	double get_ms() const;

	std::string const printTU() const;

	static const double TIME_INVALID() {constexpr double ret= -1.0; return ret; };
};

std::ostream& operator<<(std::ostream& os, StopWatch const& sw);

} //namespace util


#endif /* STOPWATCH_H_ */
