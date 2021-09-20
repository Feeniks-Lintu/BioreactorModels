function MBRate=MoserBoulton(Phi,CsData)
%CsData(1,:) = sustrato
%CsData(2,:) = producto
mu=Phi(1); K=Phi(2); Ki=Phi(3); Kp = Phi(4); n = Phi(5);
MBRate=mu.*CsData(1,:).^n./(K+CsData(1,:).^n.*Ki).*(Kp./(Kp+CsData(2,:)));