// Exercise 2
n = -5:5; 
msignal = bool2s(n >= 0); 
plot2d3(n, msignal);
title('Unit step signal u(n)');
xlabel('n'); ylabel('Amplitude');

// Exercise 3
n = -5:5; 
msignal = bool2s(n == 0); 
plot2d3(n, msignal);
title('Unit sample sequence δ(n)');
xlabel('n'); ylabel('Amplitude');

// Exercise 4
n = -5:5; 
msignal = n.*bool2s(n >= 0); 
plot2d3(n, msignal);
title('Unit sample sequence ur(n)');
xlabel('n'); ylabel('Amplitude');

// Exercise 5
n = -2:2;
x = [0, 1, 3, -2, 0];
xf = x($:-1:1);
xe = 0.5 * (x + xf);
xo = 0.5 * (x - xf);
subplot(3, 1, 1);
plot2d3(n, x);
title('Original Signal x(n)');
xlabel('n'); ylabel('Amplitude');
subplot(3, 1, 2);
plot2d3(n, xe);
title('Even Component xe(n)');
xlabel('n'); ylabel('Amplitude');
subplot(3, 1, 3);
plot2d3(n, xo);
title('Odd Component xo(n)');
xlabel('n'); ylabel('Amplitude');

// Exercise 6
n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 + x2;
subplot(3, 1, 1);
plot2d3(n, x1);
title('Signal x1(n)');
xlabel('n'); ylabel('Amplitude');
subplot(3, 1, 2);
plot2d3(n, x2);
title('Signal x2(n)');
xlabel('n'); ylabel('Amplitude');
subplot(3, 1, 3);
plot2d3(n, y);
title('Addition Signal y(n) = x1(n) + x2(n)');
xlabel('n'); ylabel('Amplitude');

// Exercise 7
n = -1:3;
x1 = [0, 0, 1, 3, -2];
x2 = [0, 1, 2, 3, 0];
y = x1 .* x2;
subplot(3, 1, 1);
plot2d3(n, x1);
title('Signal x1(n)');
xlabel('n'); ylabel('Amplitude');
subplot(3, 1, 2);
plot2d3(n, x2);
title('Signal x2(n)');
xlabel('n'); ylabel('Amplitude');
subplot(3, 1, 3);
plot2d3(n, y);
title('Multiplication Signal y(n) = x1(n).x2(n)');
xlabel('n'); ylabel('Amplitude');

// Exercise 8
n = -3:2
x = [0, 1, -2, 3, 6, 0];

n1 = -n($:-1:1); 
y1 = x($:-1:1);
n2 = n - 3;
y2 = x;

n3 = -n($:-1:1) - 2;
y3 = 2 .* x;

subplot(4, 1, 1);
plot2d3(n, x);
title('Original Signal x(n)');
xlabel('n'); ylabel('Amplitude');
subplot(4, 1, 2);
plot2d3(n1, y1);
title('Signal y1(n) = x(-n)');
xlabel('n'); ylabel('Amplitude');
subplot(4, 1, 3);
plot2d3(n2, y2);
title('Signal y2(n) = x(n + 3)');
xlabel('n'); ylabel('Amplitude');
subplot(4, 1, 4);
plot2d3(n3, y3);
title('Signal y3(n) = 2x(-n - 2)');
xlabel('n'); ylabel('Amplitude');
