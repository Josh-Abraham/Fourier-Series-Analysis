Fs = 8000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
t = 0:T:0.1;
x = sin(2*pi*50*t); 
%__________________________

xTransformed = fft(x)/length(x);
xTransformed = fftshift(xTransformed);
k = (-length(x)/2):(length(x)/2)-1;
k = (2*pi/length(x))*k;

stem(k,abs(xTransformed));
% y = xTransformed;
% 
% synthesis(50, y);

