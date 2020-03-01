function [B,t] = mi_retrogaus(A)

n=length(A);

B= A;

tic;

for i=1:n
    for j=i+1:n %filas
        B(:,j)=B(:,j)-B(i,j)*B(:,i)/B(i,i);
    end
end
    
t=toc;
