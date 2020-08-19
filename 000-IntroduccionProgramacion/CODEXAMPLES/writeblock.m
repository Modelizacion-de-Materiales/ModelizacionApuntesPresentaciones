X = linspace(0,1,100);
Y = X.^2;
TABLE = [X', Y'];
save('table.dat', 'TABLE', '-ascii')
