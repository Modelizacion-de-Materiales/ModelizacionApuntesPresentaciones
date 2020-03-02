% Esta función ensambla la matriz elemental 
function K=ensamble(MC_local,NOD_local,Kin,kel,gl)

n_nxel=length(MC_local);
[n_n, dim]=size(NOD_local);
K=Kin;
for i=1:n_nxel
    for j=1:n_nxel;
        n=MC_local(i);
        m=MC_local(j);
        K( (n-1)*gl+1:n*gl, (m-1)*gl+1:m*gl )=...
            K( (n-1)*gl+1:n*gl, (m-1)*gl+1:m*gl )+...
            kel( (i-1)*gl+1:i*gl, (j-1)*gl+1:j*gl );
    end
end