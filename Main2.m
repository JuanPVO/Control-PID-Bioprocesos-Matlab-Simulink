clear
clc
close all

%% Initial conditions EKF
x0 = [0.01; 20; 0; 1; 0.83; 0.8; 0.05; 0.002];
% EKF Param
Ts = 0.1;% for EKF
CO = [1e-3 1e0 1e-3 1e-3 1e-1 1e-1 1e-1 1e-1];
ICO= [1e-3 1e-3 1e-3 1e-3 1e-1 1e-1 1e-1 1e-1];
MCO = 1E-3;
Kp = 10.5;
Ki = 0.001;
%% Simulink
tic
mdl = 'PID';
open_system(mdl);
sim(mdl)
toc