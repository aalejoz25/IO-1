% Ejercicio 6 (maximizacion metodo simplex) se realiza el mismo ejercicio 1
% para comparar resultados

% Una joyeria tiene dos tipos de productos: Tipo P el cual es fabricado con
% 1 gramo de oro y 1.5 de plata, por un precio de venta de $65.000. El producto
% Q por su parte 1.5 de oro y 1 gramo de plata por un precio de $75000. Unicamente
% se dispone de 750 gramos de oro al igual que de plata, ¿Cuantas joyas
% debe fabricar paraobtener la maxima ganancia?

fo=[-15 -20]; %valores despejados de la funcion a maximizar

A=[1 3/2;
   3/2 1]; %matriz de inecuaciones

B=[750
   750]; % vector de recursos de las desigualdades

iterM=100; % numero de interaccion, maximo 100

In=size (A,1); % numero de inecuaciones

Xsol=[A eye(In)      B
      fo zeros(1,In) 0]; 
  
for iter=1:1:iterM
    fin=Xsol(end,1:end-1)<0;
    if fin == 0
        break
    end
[a, c] =min (Xsol(end,:)); % se determina la columna pivote "a" es el valor minimo y "c" la columna pivote

Xre=Xsol(:,end)./Xsol(:,c); % se divide los recursos entre la columna pivote

i=Xre<=0; % encuentro la columna de recursos negativos
d=Xre; %guardo la columna de recursos en d
d(i)=inf; % reemplazo los valores negativos y cero de la columna de recursos

[b,f]=min(d); % se encuentra la fila pivote

Xsol (f,1:end)= Xsol(f,1:end)/Xsol(f,c); %fila pivote dividada por el elemento pivote

for i=1:1:size(Xsol,1) %hace gauss
    if i ~=f 
        Xsol(i,:)=Xsol(i,:)- (Xsol(i,c)*Xsol(f,:));
    end
    disp(Xsol)
end

end



for i=1:1:size(fo,2) % desde 1 hasta el tamaño de las variables en fo
    d=logical(Xsol(:,i)); %se extraen filas
        X(i,1)=Xsol(d,end)
end





