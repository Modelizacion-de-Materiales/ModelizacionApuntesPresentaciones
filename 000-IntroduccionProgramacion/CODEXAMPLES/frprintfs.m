>> fid=fopen('data.dat','w');

>> fprintf(fid,' %10.8% \r\n',exp(1));

>> fprintf(fid,' %10.8f ',pi);

>> fprintf(fid,' %10.8f \r\n',pi);

>> fclose(fid);



