x=[];y=[];z=[];
fi = fopen('tablesincos.dat');
while ~feof(fi)
  line = fgetl(fi);
  if line=='x'
    n = strread(fgetl(fi));
    for i=1:n
      x = [x; strread(fgetl(fi))];
    end
  elseif line == 'y'
    n = strread(fgetl(fi));
    for i=1:n
      y = [y; strread(fgetl(fi))];
    end
  elseif line == 'z'
    n = strread(fgetl(fi));
    for i=1:n
      z = [z; strread(fgetl(fi))];
    end
  end
end
plot (x, y, 'DisplayName', 'sin(x)');hold on
plot (x, z, 'DisplayName', 'cos(x)')
legend('show');saveas(gcf, 'sincos.png')
