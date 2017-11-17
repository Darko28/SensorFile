#include "dji_vehicle.hpp"
#include "dji_mobile_communication.hpp"

class DJISensorFileReader
{
	public:
		int read_pm25(char *sensorBuffer, int len);
		int read_pm(char sensorBuffer, int len);
};
