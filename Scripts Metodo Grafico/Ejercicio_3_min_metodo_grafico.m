% Ejercicio 3 (minimizacion metodo grafico)

% Supongamos que las necesidades semanales minimas de una persona en
% proteinas, hidratos de carbono y grasas son respectivamente8, 12 y 9
% unidades. Si desearamos obtener una preparacion con esa composicion
% minimamezclando dos productos A & B, cuyos contenidos por kilogramo se
% registran en la siguiente tabla:

%       P   H   G  Costo
% A     2   6   1   600
% B     1   1   3   400   

% ¿Cuantos kilogramos de cada producto deberan comprarse semanalmente para
% que el costo de preparacion de la dieta sea minimo?

clc, clear

x = 0:11;
y = 0:15;

ejex=zeros(size(x));
ejey=zeros(size(y));

x2 = 8 - 2*x ; %Restriccion 1 
plot (x,x2,"Color",'Green')
hold on

x2 = 12 - 6*x; %Restriccion 2 
plot (x ,x2,"Color",'Blue')
hold on

x2 = 3 - x/3; %Restriccion 3
plot (x,x2,"Color",'Red')
hold on

plot(x,ejex,"Color",'black') %Ejes
hold on
plot(ejey,y,"Color",'black')
hold on

axis([-1 11 -1 13 ])

grid on

xlabel('x1')
ylabel('x2')

plot(0,12,'O')
plot(1,6,'O')
plot(3,2,'O')
plot(9,0,'O')

f = '600*x1 + 400 * x2';
syms x1 x2

x1=0;
x2=12;

r1 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r1))

x1=1;
x2=6;

r2 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r2))

x1=3;
x2=2;

r3 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r3))

x1=9;
x2=0;

r4 = num2str(eval(f));

disp(strcat("cuando x1=",num2str(x1)," y x2=",num2str(x2)," El resultado es:",r4))


disp("La solucion es 3 combos A y 2 B para minimizar el costo")

