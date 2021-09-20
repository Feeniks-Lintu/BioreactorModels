function MoLuRate=MonodLuong(Phi,CsData)
%CsData(1,:) = sustrato
%CsData(2,:) = producto
mu=Phi(1); K=Phi(2); Kp = Phi(3); m = Phi(4);
MoLuRate=mu.*CsData(1,:)./(K+CsData(1,:)).*(1-(CsData(2,:)./Kp).^m);