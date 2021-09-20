function MoBRate=MonodBoulton(Phi,CsData)
%CsData(1,:) = sustrato
%CsData(2,:) = producto
mu=Phi(1); K=Phi(2); Kp = Phi(3);
MoBRate=mu.*CsData(1,:)./(K+CsData(1,:)).*(Kp./(Kp+CsData(2,:)));