clc;
clear all;

% while state == 1
%
% gyro = input('Please enter Gyro value as degree: ');
% altitude = input('Please enter Altitude value as meter: ');
% acceleration = input('Please enter Acceleration value as m/s^2: ');
% payload = input('Please enter Payload Sensor value as integer(0/1): ');

altitudeLimit = 3000; % m
gyroLimitX = 20; % degree
gyroLimitY = 20; %degree

altitude = valueProducer(altitudeLimit,1,1);
gyroX = valueProducer(gyroLimitX,5,0);
gyroY = valueProducer(gyroLimitY,5,0);

for k=3:6
    
state = k; % state 1 indicates  sensors not initialize...
               ... state 2 indicates the every sensors starts without problem
                   ...state 3 indicates every sensor is stable during the flight
                     ...state 4 indicates the MPU6050 was broken during flight
                       ...state 5 indicates the BMP280 was broken during flight
                           ...state 6 indicates the WeightSensor was broken during flight
                                    
%sensorInitialize(state);
drawAnimatedLine(length(altitude),state);

end