%Question 4

subplot(2,1,1);
t = 0:1:224;
FSx= fft(x);
FSx=fftshift(FSx);
k1 = (-length(x)/2):(length(x)/2)-1;
omega1 = 2*pi*k1*224/41000;
stem(omega1, abs(FSx), 'Color', [0.25, 0.12,0.97])
xlim([-0.5, 0.5])
title('Original FS Coefficients');
xlabel('Frequency (Radians/s)');
ylabel ('Original FS Coefficients');
test1 = abs(real(FSx));

FSy= fft(y);
FSy=fftshift(FSy);
k2 = (-length(y)/2):(length(y)/2)-1;
omega2 = 2*pi*k2*224/41000;
subplot(2,1,2);
stem(omega2,abs(FSy), 'Color', [0.29, 0.62,0.37]);
xlim([-0.5, 0.5])
title('Filtered Signal FS Coefficients');
xlabel('Frequency (Radians/s)');
ylabel ('Filtered FS Coefficients');
test2 = abs(real(FSy));