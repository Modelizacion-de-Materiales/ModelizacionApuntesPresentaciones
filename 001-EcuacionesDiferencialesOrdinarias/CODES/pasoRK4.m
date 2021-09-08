%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                    Maestría en Materiales 2016                     %%%
%%%%                      EDO - Runge-Kutta orden 4                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Esta función evalúa un paso del método de Runge-Kutta de orden 4.
% Utiliza el formalismo vectorial para resolver ecuaciones de segundo
% orden.
%
% INPUT --
% t_anterior : tiempo del paso anterior.
% Y_anterior : ( x, v) al tiempo t_anterior.
% dt : paso temporal 
% F : handle de la función que determina la ecuación diferencial
%     (dx/dt , dv/dt ) = F(t,v) ;
%
% OUTPUT --
% t_siguiente :  t_anterior + dt
% Y_siguiente : (x, v) a tiempo t_sigiente, va a estar dado por el método.



function [t_siguiente,Y_siguiente] = pasoRK4(t_anterior,Y_anterior,dt, F)

t_siguiente = t_anterior + dt ; 

k1 = dt*F(t_anterior, Y_anterior ) ;
k2 = dt*F(t_anterior + dt/2, Y_anterior + k1/2) ;
k3 = dt*F(t_anterior + dt/2, Y_anterior + k2/2 ) ;
k4 = dt*F(t_anterior + dt, Y_anterior + k3 ) ;

Y_siguiente = Y_anterior + (k1 + 2*k2+2*k3+k4)/6 ;

