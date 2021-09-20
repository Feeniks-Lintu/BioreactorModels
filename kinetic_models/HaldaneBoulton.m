function HBRate=HaldaneBoulton(Phi,CsData)
%CsData(1,:) = sustrato
%CsData(2,:) = producto
mu=Phi(1); K=Phi(2); Ki=Phi(3); Kp = Phi(4);
HBRate=mu.*(CsData(1,:)./(K+CsData(1,:)+CsData(1,:).*CsData(1,:).*Ki)).*(Kp./(Kp+CsData(2,:)));