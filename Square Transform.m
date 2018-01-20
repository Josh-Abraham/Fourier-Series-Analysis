Fs = 8000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
t = linspace(0,2*pi/50,Fs);
x = square(50*t); 
plot(t,x);

y = fft(x);

%plot(y);
