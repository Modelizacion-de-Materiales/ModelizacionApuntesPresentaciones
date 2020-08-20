x = linspace(0, pi, 100);
y = sin(x);
z = cos(x);
fo = fopen('tablesincos.dat','w');
fprintf(fo, 'x\n%d\n', length(x));
for i=1:length(x)
  fprintf(fo, '%f\n', x(i));
end
fprintf(fo, 'y\n%d\n', length(y));
for i=1:length(x)
  fprintf(fo, '%f\n', y(i));
end
fprintf(fo, 'z\n%d\n', length(z));
for i=1:length(x)
  fprintf(fo, '%f\n', z(i));
end
fclose(fo);
