# Suma, hasta que alguna condicion
# define la bandera de salida del 
# while. se saltea el 3

S=0
i=0
flag=True
while flag is True:
    i+=1
    if i == 3:
        continue
    elif i>10:
        flag=False
    else:
        S=S+i
print(S)
