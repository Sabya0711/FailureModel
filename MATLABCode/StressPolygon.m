Pn=Png*0.052*Depth*3.28;
% Normal Faulting
Sh=P+((Sv-P)/ku);
Shn=Pn+((Sv-Pn)/ku);
x1=[Sh;Sh]; y1=[Sh;Sv];
x1n=[Shn;Shn]; y1n=[Shn;Sv];
% Reverse Faulting
SH=P+(ku*(Sv-P));
SHn=Pn+(ku*(Sv-Pn));
x3=[Sv;SH]; y3=[SH;SH];
x3n=[Sv;SHn]; y3n=[SHn;SHn];
% Strike Slip Faulting
x2=[Sh;Sv]; y2=[Sv;SH];
x2n=[Shn;Sv]; y2n=[Sv;SHn];
% Intermediate Faulting
x4=[Sh;Sv]; y4=[Sv;Sv];
x5=[Sv;Sv]; y5=[SH;Sv];
x6=[Sh,SH]; y6=[Sh,SH];
x7n=[Shn,Sh]; y7n=[Shn,Sh];
x8n=[SH,SHn]; y8n=[SH,SHn];
plot(x1,y1,'k-');
hold on;
plot(x1n,y1n,'b--');
plot(x2,y2,'k-');
plot(x2n,y2n,'b--');
plot(x3,y3,'k-');
plot(x3n,y3n,'b--');
plot(x4,y4,'k--');
plot(x5,y5,'k--');
plot(x6,y6,'k-');
plot(x7n,y7n,'b--');
plot(x8n,y8n,'b--');
scatter(Sv,Sv,500,'.r');