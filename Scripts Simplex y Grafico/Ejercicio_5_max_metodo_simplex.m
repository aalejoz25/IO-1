% Ejercicio 5 (maximizacion metodo simplex) se realiza el mismo ejercicio 1
% para comparar resultados

% Un nuevo taller de automoviles en el que laboran mecanicos y pintores
% Es necesario disponer de un numero mayoro igual de pintores que de
% mecanicos y el numero de pintores no supere el doble del de mecanicos.
% En total hay disponibles 30 mecanicos y 20 pintores. Como beneficio para
% la empresa por jornada es de 150.000 por pintor y 120.000 por mecanico
% ¿Cuantos trabajadores deben elegirse para obtener el maximo beneficio?

%**METODO SIMPLEX**
 
%**Para cambiar a metodo simplex de tres dimensiones es necesario agregar
%las terceras variables a cada matriz respectivamente


 
fo=[-150000 -120000]; %valores despejados de la funcion a maximizar

A=[1 0;
   0 1;
   -1 1;
   1 -2]; %matriz de inecuaciones

B=[20
   30
   0
   0]; % vector de recursos de las desigualdades

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
