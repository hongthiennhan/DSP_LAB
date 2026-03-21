// Exercise 1
function [yn, yorigin] = delay(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin - k;
    xn_t = [0, xn, 0];
    yn_t = xn_t;
    
    clf();
    
    nx_t = (0:length(xn)+1) - xorigin;
    subplot(2,1,1);
    plot2d3(nx_t, xn_t);
    xtitle("Origin signal x(n)", "n", "Amplitude");
    
    ny = (1:length(yn)) - yorigin;
    ny_t = (0:length(yn)+1) - yorigin;
    subplot(2,1,2);
    plot2d3(ny_t, yn_t, 2);
    xtitle("Delay signal y(n) = x(n - " + string(k) + ")", "n", "Amplitude");
endfunction

// Exercise 2
function [yn, yorigin] = advance(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin + k;
    xn_t = [0, xn, 0];
    yn_t = xn_t;
    
    clf();
    
    nx_t = (0:length(xn)+1) - xorigin;
    subplot(2,1,1);
    plot2d3(nx_t, xn_t);
    xtitle("Origin signal x(n)", "n", "Amplitude");
    
    ny = (1:length(yn)) - yorigin;
    ny_t = (0:length(yn)+1) - yorigin;
    subplot(2,1,2);
    plot2d3(ny_t, yn_t, 2);
    xtitle("Advance signal y(n) = x(n  " + string(k) + ")", "n", "Amplitude");
endfunction

// Exercise 3
function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;
    xn_t = [0, xn, 0];
    yn_t = xn_t($:-1:1);
    
    clf();
    
    nx_t = (0:length(xn)+1) - xorigin;
    subplot(2,1,1);
    plot2d3(nx_t, xn_t);
    xtitle("Origin signal x(n)", "n", "Amplitude");
    
    ny = (1:length(yn)) - yorigin;
    ny_t = (0:length(yn)+1) - yorigin;
    subplot(2,1,2);
    plot2d3(ny_t, yn_t, 2);
    xtitle("Fold signal y(n) = x(-n)", "n", "Amplitude");
endfunction

// Exercise 4
function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
    n1_start = 1 - x1origin;
    n1_end = length(x1n) - x1origin;
    
    n2_start = 1 - x2origin;
    n2_end = length(x2n) - x2origin;
    
    n_min = min(n1_start, n2_start);
    n_max = max(n1_end, n2_end);
    n = n_min:n_max;
    n_t = (n_min - 1):(n_max + 1);
    
    y1 = zeros(1, length(n));
    y2 = zeros(1, length(n));
    
    y1( (n1_start - n_min + 1) : (n1_end - n_min + 1) ) = x1n;
    y2( (n2_start - n_min + 1) : (n2_end - n_min + 1) ) = x2n;
    
    yn = y1 + y2;
    yorigin = - n_min;
    
    clf();
    subplot(3,1,1); plot2d3(((n1_start - 1):(n1_end + 1)), [0, x1n, 0]);
    xtitle("Signal x1(n)", "n", "Amplitude");
    
    subplot(3,1,2); plot2d3(((n2_start - 1):(n2_end + 1)), [0, x2n, 0]);
    xtitle("Signal x2(n)", "n", "Amplitude");
    
    subplot(3,1,3); plot2d3(n_t, [0, yn, 0], 2);
    xtitle("Result y(n) = x1(n) + x2(n)", "n", "Amplitude");
endfunction

// Exercise 5
function [yn, yorigin] = multi(x1n, x1origin, x2n, x2origin)
    n1_start = 1 - x1origin;
    n1_end = length(x1n) - x1origin;
    
    n2_start = 1 - x2origin;
    n2_end = length(x2n) - x2origin;
    
    n_min = min(n1_start, n2_start);
    n_max = max(n1_end, n2_end);
    n = n_min:n_max;
    n_t = (n_min - 1):(n_max + 1);
    
    y1 = zeros(1, length(n));
    y2 = zeros(1, length(n));
    
    y1( (n1_start - n_min + 1) : (n1_end - n_min + 1) ) = x1n;
    y2( (n2_start - n_min + 1) : (n2_end - n_min + 1) ) = x2n;
    
    yn = y1 .* y2;
    yorigin = - n_min;
    
    clf();
    subplot(3,1,1); plot2d3(((n1_start - 1):(n1_end + 1)), [0, x1n, 0]);
    xtitle("Signal x1(n)", "n", "Amplitude");
    
    subplot(3,1,2); plot2d3(((n2_start - 1):(n2_end + 1)), [0, x2n, 0]);
    xtitle("Signal x2(n)", "n", "Amplitude");
    
    subplot(3,1,3); plot2d3(n_t, [0, yn, 0], 2);
    xtitle("Result y(n) = x1(n) + x2(n)", "n", "Amplitude");
endfunction

// Exercise 6
function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = conv(xn, hn);
    yorigin = xorigin + horigin - 1;
    
    clf();
    
    nx = (1:length(xn)) - xorigin;
    nx_t = (0:length(xn)+1) - xorigin;
    subplot(3,1,1); plot2d3(nx_t, [0, xn, 0]);
    xtitle("Input Signal x(n)", "n", "Amplitude");
    
    nh = (1:length(hn)) - horigin;
    nh_t = (0:length(hn)+1) - horigin;
    subplot(3,1,2); plot2d3(nh_t, [0, hn, 0], 3);
    xtitle("Impulse Response h(n)", "n", "Amplitude");
    
    ny = (1:length(yn)) - yorigin;
    ny_t = (0:length(yn)+1) - yorigin;
    subplot(3,1,3); plot2d3(ny_t, [0, yn, 0], 2);
    xtitle("Convolution Result y(n) = x(n) * h(n)", "n", "Amplitude");
endfunction
