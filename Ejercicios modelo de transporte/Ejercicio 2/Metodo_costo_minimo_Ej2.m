clear;
tic;
clc;
%% Modelo de transporte - Metodo costo minimo
%Problema 2
%Costos
A =[12 13 4 6;
    6 4 10 11;
    10 9 12 4];
%Oferta
b =[500;
    700;
    800];
%Demanda
c =[400 900 200 500];
D=sum(b);
E=sum(c,2);
if D~=E
    error('Ecuacion no balanceada')
end
totalcost =0;
B=size(A);
while B>0
[num] = min(A(:));
%Busca numero menor entre los costos
[x, y] = ind2sub(size(A),find(A==num)) ;
% x es la fila e y es la columna
x=x(1,1);
y=y(1,1);
 
d =b(x);

e=c(y);

g=d-e;
if g< 0 
    
    g=-g;

end
if d<e 
   b(x)=b(x)-d;
c(y)=c(y)-d;
A(x,:) = [];
b(x,:)=[];
totalcost = totalcost+([num]*d);

else 
    
    b(x)=b(x)-e;
    c(y)=c(y)-e;
        A(:,y) = [];
        c(:,y)=[];
    totalcost = totalcost+([num]*e);
end
B=size(A);

end

display(totalcost,'Costo total')


