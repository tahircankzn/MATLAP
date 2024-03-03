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


