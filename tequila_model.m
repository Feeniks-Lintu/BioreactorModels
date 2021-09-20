% [t,y] = ode45(odefun,tspan,y0)
Phi = [0.37; 20; 130; 1; 9];
Yxs = 0.05;
Yps = 0.44;
ms = 0.05;
alpha = 21;
beta = 0.01;
tao = 1;
tspan = [0 75];
X0 = 0.1;
S0 = 90;
P0 = 0;
ic = [X0; S0; P0];
f = @(t,x)[MoserLuong(Phi,[x(2);x(3)]).*lag(tao,t).*x(1);
           -(1/Yxs+1/Yps).*MoserLuong(Phi,[x(2);x(3)]).*lag(tao,t).*x(1)-ms.*x(1);
           alpha.*Yps.*MoserLuong(Phi,[x(2);x(3)]).*lag(tao,t).*x(1)+beta.*x(1)];
[T, X] = ode45(f,tspan,ic);
plot(T,X,'LineWidth',3)
grid
legend('Biomas','Sustrate','Etanol')
xlabel('Time (h)')
ylabel('g/L')