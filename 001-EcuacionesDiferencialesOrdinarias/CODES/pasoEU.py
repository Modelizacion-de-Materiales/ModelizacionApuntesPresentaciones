def  pasoEU(t_anterior,Y_anterior,dt,F):

    t_siguiente = t_anterior + dt 

    Y_siguiente = Y_anterior + dt*F(t_anterior, Y_anterior )

    return t_siguiente, Y_siguiente

