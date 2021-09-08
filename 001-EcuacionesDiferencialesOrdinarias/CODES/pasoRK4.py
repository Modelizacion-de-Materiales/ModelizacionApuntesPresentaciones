def pasoRK4(t_anterior,Y_anterior,dt, F)
    t_siguiente = t_anterior + dt  
    k1 = dt*F(t_anterior, Y_anterior ) 
    k2 = dt*F(t_anterior + dt/2, Y_anterior + k1/2) 
    k3 = dt*F(t_anterior + dt/2, Y_anterior + k2/2 ) 
    k4 = dt*F(t_anterior + dt, Y_anterior + k3 ) 
    Y_siguiente = Y_anterior + (k1 + 2*k2+2*k3+k4)/6 
    return t_siguiente,Y_siguiente

