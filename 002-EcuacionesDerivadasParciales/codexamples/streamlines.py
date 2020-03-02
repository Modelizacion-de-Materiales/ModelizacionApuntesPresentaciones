
dTy, dTx = migrad(Tmat) # propia, no en paquetes,
matplotlib.pyplot.streamplot(X,Y,-dTx,-dTy,color='k',
linewidth=1,density=0.5)
