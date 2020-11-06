%#####L_U
%AX=B     %FIND FOR . . .
%A=L*U    %FIND U AND U  
%(L*U)X=B
%LY=B     %FIND Y
%UX=Y     %FIND X
%X !!!

clc
clear all
fprintf('Factorizacion LU');
%
%Dimensiones de la matriz aleatoria
m=input(' Number of columns :            ');
n=input(' Number of rows    :             ');
B=input(' Enter the matrix  :        ');
%
[n,m]=size(B);
% Matrices iniciales propuestas L y U
L=zeros(length(B)); %Matriz L de elementos zero
U=zeros(length(B)); %Matriz U de elementos zero
if n==m 
    for j=1:length(B)
        for i=1:length(B)
            sum=0;
            q=j-1;
            for k=1:q
                sum=sum+(L(i,k)*U(k,j));
            end
            if i==j
                U(i,j)=1;
            end
            if i >=j
                L(i,j)=B(i,j)-sum; %Gen matriz triangular inf
            else
                U(i,j)=(1/L(i,i))*(B(i,j)-sum); %Gen matriz triangular sup
            end
        end
    end
else
end
if n==m
    B;
    L;
    U;
    LU=L*U;
else
    disp('la matriz no es cuadrada')
end
%[1 1 2;2 3 1;3 -1 -1]






%---------------------------------------------
%The default function of MATLAB software
M = [1  1  2;2 3 1;3 -1 -1]
M = sym(M);
[L, U] = lu(M)
%The default function of MATLAB software
%---------------------------------------------
