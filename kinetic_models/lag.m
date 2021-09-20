function x=lag(tao,t)
% tao = time delay constant
% t = time
x = 1/(1+exp(-(t-tao)));