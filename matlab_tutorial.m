close all
clear all
clc 

% ; koyarsak o kısmı ekrana yazdırmaz return yapar

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A vektörü 1 x 5
A = [1 3 5 7 9]; % [1 ,3 ,5 ,7 ,9] aynı şey

% B vektörü 4 x 4
B = [1 0 -0.8 4 ; 0.5 2 2 1; -1 -5 2.1 -9 ; 0 13 0 -9];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Transpoze

tA = transpose(A);
tB = transpose(B);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% tüm elemanlarının karesini alır

sqA = A.*A;  % iki yöntemde aynı şeyi yapar
sqA2 = A.^2;

sqB = B.*B;
sqB2 = B.^2;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% vektörel çarpım
% matris vekrörel çarpıma uygun olmalı

sqB3 = B*B;
sqB4 = B^2;

%%

% a*x=b => x=a^-1*b

a = [1 2 5; 0.3 -1 0; 13 4.5 -3];
b = [6 ;-8 ;2];
x = inv(a)*b  % inv() fonkisyonu matrisin tersini alır

%%

% Symbolic Toolbox ile fonksiyon kökleri bulma
% Yöntem 1

syms s

f1 = -s^4 + 2*s^3 + s^2 + 2*s + 6;

s1 = solve(f1);
c1 = double(s1) % kökleri sayısal hale getirdi


%Yöntem 2

f2 = [-1 2 1 2 6]; % katsayıları yazdık , polinom olduğu için 
c2 = roots(f2)

%%
% Grafik Çizdirme

% x eksenimiz
t = 1:0.2:100; % 1 den 100 e kadar 0.2 artarak

% cos = radyan değer , cosd = derece değer
% 3*t ile 3.*t aynı şey çünkü 3 zaten 1x1 lik ve t de 1x1 , burda normal
% sayılar kullanıyoruz matris değil o yüzden farketmez ama .* kullanmakta
% fayda var

ft = 3.*t.*exp(-2.*t).*cosd((4.*t)+30);

% yeni bir grafik sayfası açıyoruz
figure(1)

plot(t,ft) % x ve y ekseni değerlerini veriyoruz

% x ve y eksenlerinin isimlendirilmesi (isteğe bağlı , görsellik amaçlı)
xlabel("1 - 100") 
ylabel("function value")

%% 
% x^2

step = -10:0.1:10; % bu bir liste aslında [*range(-10,11,0.1)]
x_kare = step.^2;
figure(1)

plot(step,x_kare)

%%

% LAPLACE İşlemleri

close all
clear all
clc

syms t a 
% Laplace
x1 = laplace(t)
x2 = laplace(t^3)
x3 = laplace(exp(a*t))

syms s 
% Ters Laplace
x4 = ilaplace(s)
x5 = ilaplace(s^3)
x6 = ilaplace(1/(s-1))
x7 = ilaplace(1/((s^2)+1))


%%
% Transfer Fonksiyonu

clear all
close all
clc

% Örnek a

numA = 100;
denumA = [1 2 10 20 1];

tfA = tf(numA,denumA) % tf() => transfer fonksiyonu , ilk değer pay , ikinci ise payda

% 35.56

%%

syms M fv s

ilaplace(1/((s.^2).*2 + 3.*s))


%%
x = [-1.89 -1.50 -1.11 -0.71 -0.32 -0.13 0.07];
y = [0 0.08 0.58 1.50 2.83 3.64 4.54];

plot(x,y)

xlabel("Vgs");
ylabel("Id");


%%

x = [0.07 1.06 2.04 2.23 2.51 2.98 3.47];
y = [0 0 2.74 9.47 26 63.8 65.5];

plot(x,y)

xlabel("Vgs");
ylabel("Id");

%%

y = [4.24 8.45 16.7 25.3 26.7 27.7]; % ıd

% vgg 2.5
x1 = [0.06 0.14 0.32 2.43 6.13 8.91]; % vds

% vgg 3
x2 = [0.04 0.08 0.18 0.39 0.72 0.91]; % vds

% vgg 3.5
x3 = [0.03 0.07 0.14 0.29 0.45 0.58]; % vds


figure


plot(x1,y)

hold on 
plot(x2,y)

hold on 
plot(x3,y)

legend('Vgg 2.5', 'Vgg 3' , 'Vgg 3.5' );

xlabel("Vds");
ylabel("Id");

hold off



%%

x = [-50:0.1:50];


plot3(sin(x),x.^3+2.*x+5,x)

%%

x = [-10:0.1:10];

func = 7.*sin(400.*pi.*x);

plot(x,func)


%%

x = [-10:0.1:10];

func = 7.*sin(400.*pi.*x);

stem(x,func)

%%

x=-pi/2:0.005:pi/2;
y=(0.64*sqrt(abs(x))-0.8+1.2.^abs(x).*cos(200*x)).*sqrt(cos(x));
plot(x,y,'r')


%%

x = [100 200 500 1000 5000 20000 100000 500000 1000000 2000000 5000000 10000000];

y1 = [8.7 23 52 67.2 72 73 73 72.8 72.8 72.8 66 42.8];

y2 = [1.04 3.8 16.24 28.8 34.2 34.2 34.2 34.2 34.2 34 33.2 26.2];

figure
plot(x,y1)

hold on 
plot(x,y2)

legend('10k', '1k');

xlabel("Hz");
ylabel("Av");

hold off

%%
syms s 
x4 = ilaplace(12/(s^2+s+12))

%%

roots([4 20 22])

%%

0.013/100
