function MLRate=MoserLevespiel(Phi,CsData)
%CsData(1,:) = sustrato
%CsData(2,:) = producto
mu=Phi(1); K=Phi(2); Ki=Phi(3); Kp = Phi(4); m = Phi(5); n = Phi(6);
MLRate=mu.*CsData(1,:).^n./(K+CsData(1,:).^n.*Ki).*(1-(CsData(2,:)./Kp)).^m;