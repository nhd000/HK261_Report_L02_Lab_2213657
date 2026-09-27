// Lab #1 - Lam quen SciLab
clc;

// Bai 1.1 - Thao tac vector co ban

// (a) cong 1 vao moi phan tu
x = 1:4;
y1 = x + 1
disp(y1)

// (b) nhan tung phan tu
x = 1:4;
y = 5:8;
y2 = x .* y
disp(y2)

// (c) sin cua 10 diem chia deu trong [0, pi]
x = linspace(0, %pi, 10);
y3 = sin(x)
disp(y3)
// Bai 1.2 - Lay mau va luong tu hoa tin hieu

scf(1);

// (a) ve trong 5 chu ky
t = linspace(0, 0.1, 1000);
xa = 3*sin(100*%pi*t);
subplot(3,1,1)
plot(t, xa)
xtitle("x_a(t) = 3sin(100*pi*t)")

// (b),(c) tin hieu lay mau: x(n) = 3sin(pi/3 * n), tuan hoan N=6 mau
// 5 chu ky = 30 mau
n = 0:29;
xn = 3*sin(%pi/3*n);
subplot(3,1,2)
plot2d3(n, xn)
xtitle("x(n), N=6 mau/chu ky (5 chu ky = 30 mau)")

// (d) luong tu hoa
delta = 0.1;
xq = delta * floor(xn/delta);
subplot(3,1,3)
plot2d3(n, xq)
xtitle("x_q(n), Delta=0.1 (truncation)")
