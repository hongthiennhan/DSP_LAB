// Exercise 1.1
x = 1:4;
res_1 = x + 1;
disp("Result of vector x + 1:", res_1);

x= 1:4;
y = 5:8;
res_2 = x.*y;
disp("Result of vector x.*y:", res_2);

x = linspace(0, %pi, 10);
res_3 = sin(x);
disp("Result of sin(x):", res_3);

// Exercise 1.2
f = 50;
T = 1/f;
t = 0:0.0001:5*T;
xa = 3*sin(100*%pi*t);
subplot(3, 1, 1);
plot(t, xa);
title('Analog signal xa(t)');
xlabel('t (s)'); ylabel('Amplitude');

Fs = 300;
n = 0:5*Fs*T;
xn = 3*sin(%pi*n/3);
subplot(3, 1, 2);   
plot2d3(n, xn);
title('Discrete-time signal x(n)');
xlabel('n'); ylabel('Amplitude');

delta = 0.1;
xq = floor(x/delta) * delta;
x_quantized = floor(xn / delta) * delta;
subplot(3, 1, 3);
plot2d3(n, x_quantized);
title('Quantized signal xq(n) (Truncation)');
xlabel('n'); ylabel('Amplitude');
