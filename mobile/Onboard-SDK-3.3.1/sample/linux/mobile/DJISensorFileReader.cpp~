#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>
#include "DJISensorFileReader.hpp"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

using namespace std;

//int main()
//{
//		FILE *fpSrc;
//		fpSrc = fopen("minicomSensorLargeConversionFile2", "rb");
//		if (fpSrc == NULL) {
//				printf("source file open failure.\n");
//				return 0;
//		}
//
//		fseek(fpSrc, 0, SEEK_END);
//		long size;
//		size = ftell(fpSrc);
//		cout << "size: " << size << "\n";
//
//		rewind(fpSrc);
//
//		int sensorNum;
//		//char sensorData[1024000];
//		char *sensorData = new char[size];
//		sensorNum = fread(sensorData, 44 * sizeof(char), size + 44, fpSrc);
//
//		cout << "sensor number:" << sensorNum << "\n"; 
//		
//		cout << sensorData << "\n";
//
//		int charNumber;
//		string fileName = "minicomSensorLargeConversionFile2";
//		ifstream fp(fileName.c_str());
//		char *sensorLine = new char[100];
//		fp.getline(sensorLine, 100, '|');
//		charNumber = sizeof(sensorLine);
//		cout << "\n" << "SENSOR::" << sensorLine << '|' << "\n" << "CHAR NUMBER::" << charNumber << "\n";
//
//		delete [] sensorData; 
//		delete [] sensorLine;
//
//		return 0;
//}


int DJISensorFileReader::read_pm25(char *sensorBuffer, int len)
{
		//FILE *fpSrc;
		//fpSrc = fopen("minicomSensorLargeConversionFile2", "rb");
		//if (fpSrc == NULL) {
		//		printf("source file open failure.\n");
		//		return 0;
		//}

		string fileName = "minicomSensorLargeConversionFile2";
		ifstream fp(fileName.c_str());
		//char *sensorData = new char[len];
		//fp.getline(sensorData, len, '|');
		fp.getline(sensorBuffer, len, '|');


		int fd, length;
		fd = open("/home/ubuntu/Onboard-SDK-3.3.1/sample/linux/mobile/minicomSensorLargeConversionFile2", O_RDONLY);
		
		length = read(fd, sensorBuffer, 80);

		//delete [] sensorData;

		return len;
}

int DJISensorFileReader::read_pm(char sensorBuffer, int len)
{
		FILE *fpSrc;
		fpSrc = fopen("/home/ubuntu/Onboard-SDK-3.3.1/sample/linux/mobile/minicomSensorLargeConversionFile2", "rb+");
		if (fpSrc == NULL) {
				printf("source file open failure.\n");
				return 0;
		}

		//string fileName = "minicomSensorLargeConversionFile2";
		//ifstream fp(fileName.c_str());
		char singleSensorData;
		fseek(fpSrc, sizeof(char) * 18, SEEK_SET);
		sensorBuffer = std::fgetc(fpSrc);
		return 1;
}
