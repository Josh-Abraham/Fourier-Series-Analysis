function output = synthesisFor3(omega, omega2, xOfk,xOfk2, sawtooth)
    
y = ifft(xOfk);
t = linspace(0, 2*pi/omega, length(xOfk));
subplot(3,2,1);
plot(t, real(y));
title('Synthesis of Sawtooth Function with 12 Fourier Series Coefficients for 50Hz');

subplot(3,2,2);
stem(xOfk);
title('12 Fourier Series Coefficients for 50Hz');

y = ifft(xOfk2);
t2 = linspace(0,2*pi/omega2, length(xOfk2));
subplot(3,2,3);
plot(t2, real(y));
title('Synthesis of Sawtooth Function with 12 Fourier Series Coefficients for 100Hz');

subplot(3,2,4);
stem(xOfk2);
title('12 Fourier Series Coefficients for 100Hz');

y2 = ifft(sawtooth);
t3 = linspace(0,2*pi/omega, length(sawtooth));
subplot(3,2,5);
plot(t3, real(y2));
title('Synthesis of Sawtooth Function with all Fourier Series Coefficients for 50Hz');

%subplot(3,2,6);
stem(sawtooth);
title('All Fourier Series Coefficients for 50Hz');

output = real(y);

end
