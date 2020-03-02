clear;
tic;
clc;
%% Modelo de transporte - Metodo esquina noreste
%% Problema 1

costos=[2 3 4 6;
        1 5 8 3;
        8 5 1 4;
        4 5 6 3];
demanda=[125 50 130 90];
oferta=[100 120 80 95];
k=zeros(4,4);
fil=4;
col=4;
suma=0;

%Creacion matriz de representacion y llenado de esta
repre=zeros((fil+1),(col+1));
for c = 1:fil+1
    for r = 1:col+1
        if c<=fil && r<=col
            repre(c,r)=costos(c,r);
        elseif r==col+1 && c<=fil
            repre(c,r)=oferta(c);
        elseif c==fil+1 && r<=col
            repre(c,r)=demanda(r);
        elseif r==col+1 && c==fil+1
            repre(c,r)=sum(oferta);
        end
    end
end
%Bucle principal
fprintf('\n MATRIZ INICIAL \n')
fprintf('--------------------------------\n')
disp('C/P  C1   C2    C3    C4    Oferta')
disp(repre) 
fprintf('    ----------------------\n           Demanda \n')
%Luego de mostrar la matriz original se vuelve a ceros para dejar solo los
%valores que se sumaran
repre=zeros((fil+1),(col+1));
i=1;j=1;
while i<=fil &&  j<=col
    min1=min(demanda(j)& oferta(i));
    suma=suma+costos(i,j)*min1;
    repre(i,j)=repre(i,j)+costos(i,j)*min1;
    demanda(j)=demanda(j)-min1;
    oferta(i)=oferta(i)-min1;
    
    if demanda(j)==0
        j=j+1;
    end
    if oferta(i)==0
        i=i+1;
    end
end

fprintf('\n RESULTADO \n')
fprintf('--------------------------------\n')
fprintf('C/P  C1   C2    C3    C4    Oferta\n')
disp(repre)
%Quitar ceros de la matriz
fprintf('\n Costo total: ')
repre(repre==0)=[];
fprintf('%d + %d + ', [repre]')
fprintf('= %d \n', suma)