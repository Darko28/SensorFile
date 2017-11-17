#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main()
{
		FILE *fpSrc;
		fpSrc = fopen("minicomSensorLargeConversionFile2", "rb");
		if (fpSrc == NULL) {
				printf("source file open failure.\n");
				return 0;
		}

		fseek(fpSrc, 0, SEEK_END);
		long size;
		size = ftell(fpSrc);
		cout << "size: " << size << "\n";

		rewind(fpSrc);

		int sensorNum;
		//char sensorData[1024000];
		char *sensorData = new char[size];
		sensorNum = fread(sensorData, 44 * sizeof(char), size + 44, fpSrc);

		cout << "sensor number:" << sensorNum << "\n"; 
		
		cout << sensorData << "\n";

		int charNumber;
		string fileName = "minicomSensorLargeConversionFile2";
		ifstream fp(fileName.c_str());
		char *sensorLine = new char[100];
		fp.getline(sensorLine, 100, '|');
		charNumber = sizeof(sensorLine);
		cout << "\n" << "SENSOR::" << sensorLine << '|' << "\n" << "CHAR NUMBER::" << charNumber << "\n";

		delete [] sensorData; 
		delete [] sensorLine;

		return 0;
}


int read_pm25(char *sensorBuffer, int len)
{
		FILE *fpSrc;
		fpSrc = fopen("minicomSensorLargeConversionFile2", "rb");
		if (fpSrc == NULL) {
				printf("source file open failure.\n");
				return 0;
		}

		string fileName = "minicomSensorLargeConversionFile2";
		ifstream fp(fileName.c_str());
		char *sensorData = new char[len];
		fp.getline(sensorData, len, '|');

		delete [] sensorData;

		return len;
}
