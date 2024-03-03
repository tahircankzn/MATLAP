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

f2 = [-1 2 1 2 6]; % katsayıları yazdık
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

