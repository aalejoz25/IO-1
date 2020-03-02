% Ejercicio 1 (maximizacion metodo grafico)

% Un nuevo taller de automoviles en el que laboran mecanicos y pintores
% Es necesario disponer de un numero mayoro igual de pintores que de
% mecanicos y el numero de pintores no supere el doble del de mecanicos.
% En total hay disponibles 30 mecanicos y 20 pintores. Como beneficio para
% la empresa por jornada es de 150.000 por pintor y 120.000 por mecanico
% ¿Cuantos trabajadores deben elegirse para obtener el maximo beneficio?

clc, clear


x = 0:30;
y = 0:40;

ejex=zeros(size(x));
ejey=zeros(size(y));

plot(x,ejex,"Color",'black') %Ejes
hold on
plot(ejey,y,"Color",'black')
hold on

x1 = 20; %Restriccion 1 
plot (x1 * ones (size(y)),y,"Color",'Green')
hold on

x2 = 30; %Restriccion 2 
plot (x ,x2 * ones (size(x)),"Color",'Blue')
hold on

x2 = x; %Restriccion 3
plot (x,x2,"Color",'Red')
hold on

x2 = x/2;
plot (x,x2,"Color",'#D95319')
hold on

plot(20,20,'O')
 plot(20,10,'O')
 plot(0,0,'O')

xlabel('x1')
ylabel('x2')

grid on

f = '150000*x1 + 120000 * x2';
syms x1 x2

x1=20;
x2=10;

r1 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r1))

x1=20;
x2=20;

r2 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r2))
disp("La solucion es 20 pintores y 20 mecanicos para maximizar las ganancias")














