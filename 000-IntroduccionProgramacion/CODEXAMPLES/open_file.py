fid = open('data.dat','w')
A = ['esta es una lista de lineas\n', 'que se van a escribir en el archivo\n']
fid.writelines(A)
fid.close()
