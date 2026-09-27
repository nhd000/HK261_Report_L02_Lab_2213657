// Lab #2

clear;
clc;
// Bai tap 2 - Tin hieu buoc don vi u(n) qua bool2s


scf(1);
n = -5:5;
msignal = bool2s(n >= 0);
plot2d3(n, msignal)
xlabel('n'); ylabel('u(n)');
title('Unit step u(n)');

// Bai tap 3 - Xung don vi delta(n) qua bool2s

scf(2);
n = -5:5;
msignal = bool2s(n == 0);
plot2d3(n, msignal)
xlabel('n'); ylabel('delta(n)');
title('lab2_ex3');

// Bai tap 4 - Tin hieu doc don vi ur(n), n = -5:5

scf(3);
n = -5:5;
ur = n .* bool2s(n >= 0);   // ur(n) = n voi n>=0, 0 nguoc lai
plot2d3(n, ur)
xlabel('n'); ylabel('ur(n)');
title('lab2_ex4');

// Bai tap 5 - Phan tich chan/le cua x(n) = {1, 3(n=0), -2}

scf(4);
n  = -1:1;
x  = [1 3 -2];
xr = x($:-1:1);
xe = 0.5*(x + xr);
xo = 0.5*(x - xr);

subplot(3,1,1); plot2d3(n,x);  title('x(n)');  xlabel('n'); ylabel('x(n)');
subplot(3,1,2); plot2d3(n,xe); title('xe(n)'); xlabel('n'); ylabel('xe(n)');
subplot(3,1,3); plot2d3(n,xo); title('xo(n)'); xlabel('n'); ylabel('xo(n)');

disp("Kiem tra xe+xo = x:"); disp(xe+xo)

// Bai tap 6 - Phep cong y(n) = x1(n) + x2(n)

scf(5);
n1 = 0:3;        x1 = [0 1 3 -2];
n2 = -1:2;       x2 = [0 1 2 3];

n  = min(n1(1),n2(1)):max(n1($),n2($));
y1 = zeros(1,length(n)); y2 = zeros(1,length(n));
y1(n1 - n(1) + 1) = x1;
y2(n2 - n(1) + 1) = x2;
y  = y1 + y2;

subplot(3,1,1); plot2d3(n,y1); title('x1(n)'); xlabel('n');
subplot(3,1,2); plot2d3(n,y2); title('x2(n)'); xlabel('n');
subplot(3,1,3); plot2d3(n,y);  title('y(n)=x1(n)+x2(n)'); xlabel('n');


// Bai tap 7 - Phep nhan y(n) = x1(n) * x2(n)  (tai su dung x1,x2 o tren)

scf(6);
y = y1 .* y2;

subplot(3,1,1); plot2d3(n,y1); title('x1(n)'); xlabel('n');
subplot(3,1,2); plot2d3(n,y2); title('x2(n)'); xlabel('n');
subplot(3,1,3); plot2d3(n,y);  title('y(n)=x1(n).x2(n)'); xlabel('n');

// Bai tap 8

scf(7);
nx = -2:1;         x = [1 -2 3 6];

// y1(n) = x(-n)
n1 = -1:2;         y1 = x($:-1:1);

// y2(n) = x(n+3)  (dich som 3)
n2 = -5:-2;        y2 = x;

// y3(n) = 2*x(-n-2)
n3 = -3:0;         y3 = 2*x($:-1:1);

subplot(2,2,1); plot2d3(nx,x);  title('x(n)');
subplot(2,2,2); plot2d3(n1,y1); title('y1(n)=x(-n)');
subplot(2,2,3); plot2d3(n2,y2); title('y2(n)=x(n+3)');
subplot(2,2,4); plot2d3(n3,y3); title('y3(n)=2x(-n-2)');

