#include <stdio.h>

struct SensorNumber {
	char num1;
	char num2;
};

int sensorDataConvertToDecimal(char a) {
	if (a >= '0' && a <= '9') {
		return a - '0';
	} else if (a >= 'a' && a <= 'f') {
		return (a - 'a' + 10);
	}
	return -1;
};

int sensorDataDecimal(char a, char b) {
	int an = sensorDataConvertToDecimal(a);
	int bn = sensorDataConvertToDecimal(b);
	return an * 16 + bn;
};

float sensorData(int a, int b) {
	float result;
	result = ((b * 256) +a) / 10;
	return result;
};

int main()
{
	FILE *fpSrc, *fpDest;
	fpSrc = fopen("minicomSensorFile1.txt", "rb");
	if (fpSrc == NULL) {
			printf("source file open failure.\n");
			return 0;
	}

	fpDest = fopen("/Users/darko/Dev/DJI/SensorFile/minicomSensorConversionFile", "wb+");
	if (fpDest == NULL) {
			printf("Destination file open failure.\n");
			return 0;
	}

	SensorNumber sensorNum[200];
	for (int i=0; i<200; i++) {
			sensorNum[i].num1 = fgetc(fpSrc);
			sensorNum[i].num2 = fgetc(fpSrc);
			if (sensorNum[i].num1 == ' ') {
					sensorNum[i].num1 = sensorNum[i].num2;
					sensorNum[i].num2 = fgetc(fpSrc);
			}
	}

	for (int i=0; i<200; i++) {
			printf("%c%c ", sensorNum[i].num1, sensorNum[i].num2);
	}
	printf("\n");

	int sensor[200];
	for (int i=0; i<200; i++) {
			printf("%d ", sensorDataDecimal(sensorNum[i].num1, sensorNum[i].num2));
			sensor[i] = sensorDataDecimal(sensorNum[i].num1, sensorNum[i].num2);
	}
	printf("\n");
	printf("sensor data in array:\n");
	for (int i=0; i<200; i++) {
			printf("%d ", sensor[i]);
	}
	printf("\n");

	int sensorTmp[10];
	int sensorLen = sizeof(sensor) / sizeof(sensor[0]);
	printf("sensor data: \n");
	for (int i=0; i<sensorLen/10; i++) {
			for (int j=0; j<10; j++) {
					sensorTmp[j] = sensor[j+i*10];
			}
			float pm25SensorResult, pm10SensorResult;
			pm25SensorResult = sensorData(sensorTmp[2], sensorTmp[3]);
			pm10SensorResult = sensorData(sensorTmp[4], sensorTmp[5]);
			printf("pm25: %f pm10: %f \n", pm25SensorResult, pm10SensorResult);
	}
	printf("\n");

	rewind(fpSrc);
	char ch;

	fseek(fpSrc, 0, SEEK_END);
	int size = ftell(fpSrc);
	printf("%d\n", size);
	int arraySize = size;
	SensorNumber *sensorPr = new SensorNumber[arraySize];

	printf("%lu\n", sizeof(sensorPr));
	printf("%lu\n", sizeof(SensorNumber));
	printf("%lu\n", sizeof(sensorPr[0]));

//	rewind(fpSrc);
	fseek(fpSrc, 0, SEEK_SET);
	int k = 0;
	while ((ch = getc(fpSrc)) != EOF) {
			(sensorPr+k)->num1 = ch;
			(sensorPr+k)->num2 = getc(fpSrc);
			if ((sensorPr+k)->num1 == ' ') {
					(sensorPr+k)->num1 = (sensorPr+k)->num2;
					(sensorPr+k)->num2 = fgetc(fpSrc);
			}
			k++;
	}

	rewind(fpSrc);
	k = 0;
	ch = getc(fpSrc);
	do {
			(sensorPr+k)->num1 = ch;
			(sensorPr+k)->num2 = getc(fpSrc);
			if ((sensorPr+k)->num1 == ' ') {
					(sensorPr+k)->num1 = (sensorPr+k)->num2;
					(sensorPr+k)->num2 = fgetc(fpSrc);
			}
			k++;
	} while ((ch = getc(fpSrc)) != EOF);

	printf("%lu\n", arraySize/sizeof(*sensorPr));
	for (int i=0; i< (arraySize / (sizeof(*sensorPr) + 1)); i++) {
			//printf("%d ", i);
			printf("%c%c ", (sensorPr+i)->num1, (sensorPr+i)->num2);
	}
	printf("\n");

	int *sensorPn = new int[arraySize/sizeof(*sensorPr)+1];
	for (int i=0; i<(arraySize/sizeof(*sensorPr)+1); i++) {
			//printf("%d ", sensorDataDecimal((sensorPr+i)->num1, (sensorPr+i)->num2));
			*(sensorPn+i) = sensorDataDecimal((sensorPr+i)->num1, (sensorPr+i)->num2);
	}

	//for (int i=0; i<(arraySize/sizeof(*sensorPr)+1); i++) {
	//		printf("%d ", sensorDataDecimal((sensorPr+i)->num1, (sensorPr+i)->num2));
	//		*(sensorPn+i) = sensorDataDecimal((sensorPr)->num1, (sensorPr+i)->num2);
	//}


	int totalSensorNum = (arraySize/(sizeof(*sensorPr)+1))/10;
	SensorNumber *sensorDest = new SensorNumber[totalSensorNum];

	printf("\n\n\n\n");
	for (int i=0; i<(arraySize/(sizeof(*sensorPr)+1))/10; i++) {
			for (int j=0; j<10; j++) {
					sensorTmp[j] = *(sensorPn+j+i*10);
					//printf("sensorTmp %d ", *(sensorPn+j+i*10));
			}
			printf("\n");
			float pm25SensorResult, pm10SensorResult;
			pm25SensorResult = sensorData(sensorTmp[2], sensorTmp[3]);
			pm10SensorResult = sensorData(sensorTmp[4], sensorTmp[5]);
			(sensorDest+i)->num1 = pm25SensorResult;
			(sensorDest+i)->num2 = pm10SensorResult;
			printf("pm2.5: %f, pm10: %f ", pm25SensorResult, pm10SensorResult);
			printf("sensorDest: %d, %d", (sensorDest+i)->num1, (sensorDest+i)->num2);
	}
	printf("\ntotal sensor number: %lu", (arraySize/(sizeof(*sensorPr)+1))/10);
	printf("\n");

//	for (int i=0; i<sensorLen/10; i++) {
//			for (int j=0; j<10; j++) {
//					sensorTmp[j] = sensor[j+i*10];
//			}
//			float pm25SensorResult, pm10SensorResult;
//			pm25SensorResult = sensorData(sensorTmp[2], sensorTmp[3]);
//			pm10SensorResult = sensorData(sensorTmp[4], sensorTmp[5]);
//			printf("pm25: %f pm10: %f \n", pm25SensorResult, pm10SensorResult);
//	}
//	printf("\n");

//	fwrite(sensorPr, sizeof(char), (arraySize/(sizeof(*sensorPr)+1)), fpDest);

	printf("%lu %d\n", sizeof(sensorDest), totalSensorNum);

	fseek(fpDest, 0, SEEK_SET);
	int resValue = fwrite(sensorDest, sizeof(SensorNumber), totalSensorNum, fpDest);
	fwrite(sensorDest, sizeof(SensorNumber), (arraySize/(sizeof(*sensorPr)+1))/10, fpDest);
	printf("%d\n", resValue);

//	void *ptr;
//	ptr = sensorDest;
//	fwrite(ptr, sizeof(sensorDest), totalSensorNum, fpDest);

//	char data[totalSensorNum * 3];
	for (int i=0; i<totalSensorNum; i++) {
			fputc((sensorDest+i)->num1, fpDest);
			fputc((sensorDest+i)->num2, fpDest);
	}



	fclose(fpSrc);
	fclose(fpDest);

	delete [] sensorPr;
	delete [] sensorPn;
	delete [] sensorDest;

	return 0;
}
