import numpy as np

linea1 = f'e = {np.e:10.8f}\r\n'
linea2 = f'pi = {np.pi:10.8f}\r\n'
linea3 = f'- sqrt(2) = {-np.sqrt(2):10.7f}\r\n'

with open('data2.dat', 'w') as f:
    f.writelines([linea1, linea2])
    f.writelines(linea3)
