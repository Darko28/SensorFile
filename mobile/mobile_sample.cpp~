#include <dji_vehicle.hpp>
#include "dji_mobile_communication.hpp"
#include "DJISensorFileReader.hpp" 
//#include <dji_linux_helpers.hpp>
#include "mobile_sample.hpp"

using namespace DJI;
using namespace DJI::OSDK;

int main(int argc, char** argv)
{
		Vehicle* vehicle = setupOSDK(argc, argv);
		if (vehicle == NULL)
		{
				std::cout << "Vehicle not initialized, exiting.\n";
				return -1;
		}

		setupMSDKParsing(vehicle);
		return 0;
}


bool setupMSDKParsing(Vehicle *vehicle)
{
		vehicle->moc->setFromMSDKCallback(parseFromMobileCallback);
		std::cout << "Listening to mobile commands. Press any key to exit.\n";
		char a;
		std::cin >> a;
		return true;
}

void parseFromMobileCallback(Vehicle* vehicle, RecvContainer recvFrame, UserData userData)
{
		uint16_t mobile_data_id;
		mobile_data_id = *(reinterpret_cast<uint16_t*>(&recvFrame.recvData.raw_ack_array));

		switch (mobile_data_id)
		{
				case 47:
						//sendSensorDataToMobileDevice();
						sendSensorDataToMobileDevice(vehicle, recvFrame, userData);
						break;
				default:
						break;
		}
}

void sendSensorDataToMobileDevice(Vehicle* vehiclePtr, RecvContainer recvFrame, UserData userData)
{
		DJISensorFileReader sfd;
		char *sensorBuffer = new char[100];
		//char sensorBuffer;
		int sensorDataByte;
		sensorDataByte = sfd.read_pm25(sensorBuffer, 90);
		//Protocol::send(0, 0, OpenProtocol::CMDSet::Activation::toMobile, sensorBuffer, sensorDataByte, 500, 1, NULL, 0);
		//sensorDataByte = sfd.read_pm(sensorBuffer, 90);
		vehiclePtr->moc->sendDataToMSDK((uint8_t*)sensorBuffer, sensorDataByte);
		//ACK::getErrorCodeMessage("PM25 SENSOR DATA", __func__);
		std::cout << *sensorBuffer << std::endl;
		std::cout << &sensorBuffer << std::endl;
		std::cout << sensorBuffer << std::endl;
		std::cout << "PM25 SENSOR DATA SENDING..." << std::endl;

		//delete [] sensorBuffer;
}
