// Exercise 6.3
w = -%pi:0.01:%pi;
X1 = 1 ./ (1 - 0.1 * exp(-%i * w));

clf();
subplot(2,1,1);
plot(w, abs(X1));
xtitle('Amplitude Spectrum |X1(exp(jw))|', 'Frequency (rad/s)', 'Magnitude');
xgrid();

subplot(2,1,2);
plot(w, phasemag(X1));
xtitle('Phase Spectrum of X1', 'Frequency (rad/s)', 'Phase (degrees)');
xgrid();

w = -%pi:0.01:%pi;
X2 = 1 + exp(-%i*w) + exp(-%i*2*w) + exp(-%i*3*w);

scf(1);
subplot(2,1,1);
plot(w, abs(X2));
xtitle('Amplitude Spectrum |X2(exp(jw))|', 'Frequency (rad/s)', 'Magnitude');
xgrid();

subplot(2,1,2);
plot(w, phasemag(X2));
xtitle('Phase Spectrum of X2', 'Frequency (rad/s)', 'Phase (degrees)');
xgrid();

// Exercise 6.4
w = -%pi:0.01:%pi;
H = 1 ./ (1 + 0.1*exp(-%i*w) + 0.2*exp(-%i*2*w));

clf();
subplot(2,1,1);
plot(w, abs(H), 'linewidth', 2);
xtitle('Amplitude Spectrum |H(exp(jw))|', 'Frequency (rad)', 'Magnitude');
xgrid();

subplot(2,1,2);
plot(w, phasemag(H), 'r', 'linewidth', 2);
xtitle('Phase Spectrum of H(exp(jw))', 'Frequency (rad)', 'Phase (degrees)');
xgrid();

// Exercise 6.5
w = -%pi:0.01:%pi;
H = 1 + exp(-%i*w);
X = 1 ./ (1 - 0.5*exp(-%i*w));
Y = H .* X;

clf();
subplot(2,1,1);
plot(w, abs(Y), 'linewidth', 2);
xtitle('Amplitude Spectrum of Output |Y(exp(jw))|', 'Frequency (rad)', 'Magnitude');
xgrid();

subplot(2,1,2);
plot(w, phasemag(Y), 'g', 'linewidth', 2);
xtitle('Phase Spectrum of Output Y(exp(jw))', 'Frequency (rad)', 'Phase (degrees)');
xgrid();
