function HLRate=HaldaneLuong(Phi,CsData)
%CsData(1,:) = sustrato
%CsData(2,:) = producto
mu=Phi(1); K=Phi(2); Ki=Phi(3); Kp = Phi(4); m = Phi(5);
HLRate=mu.*CsData(1,:)./(K+CsData(1,:)+CsData(1,:).*CsData(1,:).*Ki).*(1-(CsData(2,:)./Kp).^m);