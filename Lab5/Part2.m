% Part2.m
% Author: Charles Yang
% Signal&System 3.4 (a)(b)(c)
%% (a)
n = -20:100;
x1 = exp(1i * pi / 4 * n);
x2 = sin(pi * n / 8 + pi / 16);
x3 = exp(log(9/10) * n);
x4 = n+1;
figure;
subplot(221);
xlabel('n');stem(n,real(x1),'r');
hold on;stem(n,imag(x1),'g');
subplot(222);
stem(n,x2);xlabel('n');ylabel('x2[n]');
subplot(223);
stem(n,x3);xlabel('n');ylabel('x3[n]');
subplot(224);
stem(n,x4);xlabel('n');ylabel('x4[n]');
%% (b)
a=[1 -0.25];
b=[1 0.9];
y1=filter(b,a,x1);
y2=filter(b,a,x2);
y3=filter(b,a,x3);
y4=filter(b,a,x4);
figure;
subplot(221);
xlabel('n');
stem(0:100, real(y1(21:121)),'r');
hold on;
stem(0:100, imag(y1(21:121)),'g');
subplot(222);
stem(0:100, y2(21:121));xlabel('n');ylabel('y2[n]');
subplot(223);
stem(0:100, y3(21:121));xlabel('n');ylabel('y3[n]');
subplot(224);
stem(0:100, y4(21:121));xlabel('n');ylabel('y4[n]');
%% (c)
H1=y1./x1;
H2=y2./x2;
H3=y3./x3;
H4=y4./x4;
figure;
subplot(221);
xlabel('n');
stem(0:100, real(H1(21:121)),'r');
hold on;
stem(0:100, imag(H1(21:121)),'g');
subplot(222);
stem(0:100, H2(21:121));xlabel('n');ylabel('H2[n]');
subplot(223);
stem(0:100, H3(21:121));xlabel('n');ylabel('H3[n]');
subplot(224);
stem(0:100, H4(21:121));xlabel('n');ylabel('H4[n]');