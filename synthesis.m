function output = synthesis(omega, xOfk)
    
y = ifft(xOfk);
t = linspace(0, 2*pi/omega, length(xOfk));

plot(t, y);
output = real(y);
end
