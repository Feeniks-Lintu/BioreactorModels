function MLuRate=MoserLuong(Phi,CsData)
%CsData(1,:) = sustrato
%CsData(2,:) = producto
% mu = maximum specific growth rate, 1/h
% Ks = Substrate affinity, g/L
% Kp = Inhibition term, g/L
% n = Exponential for Moser model
% m = Exponential for Luong model
mu=Phi(1); Ks=Phi(2); Kp = Phi(3); n = Phi(4); m = Phi(5);
MLuRate=mu.*CsData(1,:).^n./(Ks+CsData(1,:).^n).*(1-(CsData(2,:)./Kp).^m);