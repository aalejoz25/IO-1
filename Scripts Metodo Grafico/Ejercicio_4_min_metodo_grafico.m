% Ejercicio 4 (minimizacion metodo grafico)

% Una compañia tiene dos minas: la mina A produce diariamente 1 tonelada de
% carbon de alta calidad, 2 toneladas de calidad media y 4 de calidad baja;
% la mina B produce 2 toneladas de cada una de las 3 clases. Esta compañia
% necesita 70 toneladas de carbon de alta calidad, 130 de media y 150 de
% baja. Los gastos diarios de la mina A ascienden a $500 y la B a $750.
% ¿Cuantosdias deberan trabajar en cada mina para que los costos sean
% minimos?

clc, clear

x = 0:80;
y = 0:80;

ejex=zeros(size(x));
ejey=zeros(size(y));

plot(x,ejex,"Color",'black') %Ejes
hold on
plot(ejey,y,"Color",'black')
hold on

x2 = (70-x)/2 ; %Restriccion 1 
plot (x,x2,"Color",'Green')
hold on

x2 = (130-2*x)/2; %Restriccion 2 
plot (x ,x2,"Color",'Blue')
hold on

x2 = (150-4*x)/2; %Restriccion 3
plot (x,x2,"Color",'Red')
hold on

xlabel('x1')
ylabel('x2')

axis([-1 80 -1 90 ])

grid on

plot(0,75,'O')
plot(10,55,'O')
plot(70,0,'O')
plot(60,5,'O')

f = '500*x1 + 750 * x2';
syms x1 x2

x1=0;
x2=75;

r1 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r1))

x1=10;
x2=55;

r2 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r2))

x1=70;
x2=0;

r3 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r3))

x1=60;
x2=5;

r4 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r4))

disp("La solucion es 60 dias la mina A y 5 la B para minimizar el costo")
