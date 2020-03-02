nodos = [ 0 0 ; 1 0 ; 1 1 ];
MC = [ 1 2 ; 2 3 ; 3 1 ];
nelem = 3;
nnod = 3;
gl = 2 ;
E = 300e9 ;
A = 0.01 ^ 2 ;

fid=fopen('matrices.dat','w');
arch_mat_title='\n Matrices Elementales %d \n =========================== \n\n';
fprintf(fid,arch_mat_title, nelem);
fclose(fid);
%%
k1 = matriz_barra(A,E,1,nodos(MC(1,:),:));
k2 = matriz_barra(A,E,2,nodos(MC(2,:),:));
k3 = matriz_barra(A,E,3,nodos(MC(3,:),:));
%%
Ko = zeros (nnod*gl);

K1 = ensamble(MC(1,:),nodos(MC(1,:)),Ko,k1,gl);
K2 = ensamble(MC(2,:),nodos(MC(1,:)),Ko,k2,gl);
K3 = ensamble(MC(3,:),nodos(MC(1,:)),Ko,k3,gl);

K = K1 + K2 + K3;
