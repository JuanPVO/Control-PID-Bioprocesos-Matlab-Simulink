clear
clc
close all

%% Initial conditions EKF
x0 = [0.01; 20; 0; 1; 0.83; 0.8; 0.05; 0.002];
% EKF Param
Ts = 0.1;% for EKF
CO = [1e-3 1e0 1e-3 1e-3 1e-1 1e-1 1e-1 1e-1];
ICO= [1e-2 1e-3 1e-3 1e-3 1e-1 1e-1 1e-1 1e-1];
MCO = 1E-3;
<<<<<<< HEAD
Kp = 10.6;
Ki = 0.001;
=======
Kp = 0.5;
Ki = 0.1;
>>>>>>> e0782741c7abe5c0c9a1b2f91c272f3d6d5da4c6
%% Simulink
tic
mdl = 'PID';
open_system(mdl);
sim(mdl)
toc
