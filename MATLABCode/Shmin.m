function value=Shmin(Ceff,P,dP,T0,Thetab)
value=(Ceff+(4*P)+(2*dP)-T0-((2*cos(2*Thetab))*((2*P)+dP-T0)))/(4*(1-cos(2*Thetab)));