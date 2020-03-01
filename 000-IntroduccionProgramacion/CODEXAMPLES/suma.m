% Suma, hasta que alguna condicion
% define la bandera de salida del 
% while. se saltea el 3

S=0;
i=0;
flag=true;
while flag == true
    i=i+1;
    if i == 3
        continue
    elseif i>10
        flag=false;
    else
        S=S+i;
    end
end

disp(S);
