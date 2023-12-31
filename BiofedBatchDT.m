function xk1 = BiofedBatchDT(xk,uk)

Ts = 0.08;
xk1 = xk(:);
N = 100;  % Number of integration time steps for Euler method
dt = Ts/N;
uk1 = uk(:);
for i = 1:N
    xk1 = xk1 + dt*BiofedbatchCT(xk1,uk1);
end