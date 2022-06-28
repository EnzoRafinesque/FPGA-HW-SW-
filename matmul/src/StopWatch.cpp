
#include <sstream>


#include "StopWatch.h"


namespace util
{

	bool StopWatch::start()
	{
		if( m_status == SWStatus::init )
		{
			m_tSta= InternalClock::now();
			m_status= SWStatus::started;
			return true;
		}
		//else
		return false;
	}

	bool StopWatch::stop()
	{
		if( m_status == SWStatus::started )
		{
			m_tSto= InternalClock::now();
			m_status= SWStatus::stopped;
			return true;
		}
		//else
		return false;
	}

	//returns milliseconds elapsed, with microsecond resolution
	double StopWatch::get_ms() const
	{
		if( m_status == SWStatus::stopped )
		{
			return std::chrono::duration_cast<Resolution>(m_tSto - m_tSta).count() * MicroToMilliScaleFactor;
		}
		else
		{
			return TIME_INVALID();	// we could print the time till now if not stopped
		}
	}

	std::string const StopWatch::printTU() const
	{
		std::stringstream ss;
		ss<< get_ms() << strTimeUnit();
		return ss.str();
	}

	// free functions
	std::ostream& operator<<(std::ostream& os, StopWatch const& sw)
	{
		os<<sw.printTU();
		return os;
	}

}//namespace util
