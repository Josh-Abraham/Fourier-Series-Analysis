Fs = 80;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
t = linspace(0,2*pi/50,Fs);
x = sawtooth(50*t); 

y = fft(x);
fc = [y(1) y(2) y(3) y(4) y(5) y(6) y(7) y(8) y(9) y(10) y(11) y(12)];

t2 = linspace(0,2*pi/100,Fs);
x2 = sawtooth(100*t); 
y2 = fft(x2);

fc2 = [y2(1) y2(2) y2(3) y2(4) y2(5) y2(6) y2(7) y2(8) y2(9) y2(10) y2(11) y2(12)];
synthesisFor3(50,100, fc, fc2, y);

