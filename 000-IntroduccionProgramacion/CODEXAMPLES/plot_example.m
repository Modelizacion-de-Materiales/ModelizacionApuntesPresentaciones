x = linspace(-1,1,100);
y = funcion_partida(x, 0)

plot (x, y);
ylim([-0.5,1.5]);
xlabel('X');
ylabel('y');

saveas(gcf, 'partida.pdf', 'pdf')