% Suma, hasta que llega a 
% i=10, en ese caso
% rompe el lazo en froma
% bursca. se saltea el 3.

S=0;
i=0;
flag=true;
while flag == true
    i=i+1;
    if i == 3
      continue;
    elseif i==10
      break;
    else
        S=S+i;
    end
end
disp(S);
