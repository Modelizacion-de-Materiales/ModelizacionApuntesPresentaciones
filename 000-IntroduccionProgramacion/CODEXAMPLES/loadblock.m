A = load('table.dat');
plot(A(:,1), A(:,2), 'ok');
xlabel('x', 'fontsize', 14);
ylabel('x^2','fontsize', 14);
saveas(gcf, 'xcuad.png')
