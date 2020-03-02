% Ejercicio 2 (maximizacion metodo grafico)

% Una joyeria tiene dos tipos de productos: Tipo P el cual es fabricado con
% 1 gramo de oro y 1.5 de plata, por un precio de venta de $65.000. El producto
% Q por su parte 1.5 de oro y 1 gramo de plata por un precio de $75000. Unicamente
% se dispone de 750 gramos de oro al igual que de plata, ¿Cuantas joyas
% debe fabricar paraobtener la maxima ganancia?

clc, clear

x = 0:800;
y = 0:900;

ejex=zeros(size(x));
ejey=zeros(size(y));

plot(x,ejex,"Color",'black') %Ejes
hold on
plot(ejey,y,"Color",'black')
hold on

x2 = 500-(2/3)*x; %Restriccion 1 
plot (x ,x2,"Color",'Blue')
hold on

x2 = 750 -(3/2)*x; %Restriccion 2
plot (x,x2,"Color",'Red')
hold on

grid on
xlabel('x1')
ylabel('x2')


plot(300,300, 'O')
plot(0,500, 'O')
plot(750,0, 'O')

f = '65000*x1 + 75000 * x2';
syms x1 x2

x1=300;
x2=300;

r1 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r1))

x1=0;
x2=500;

r2 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r2))

x1=500;
x2=0;

r3 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r3))


disp("La solucion es 300 joyas P y 300 Q para maximizar las ganancias")

