clear all
close all
t=inputdlg({'Depth TVDGL (m):','Overburden Stress (psi):','Pore pressure (psi):','Hydrostatic Pore pressure gradient (ppg):','Mud Weight (ppg):','UCS (psi):','Tensile Strenght (psi)','Poisson Ratio','Breakout Width (deg):','Sliding Friction Coefficient:','Internal Friction Coefficient:'},'Input Parameters');
Depth=str2double(t{1});Sv=str2double(t{2});P=str2double(t{3});
Png=str2double(t{4});MW=str2double(t{5});C0=str2double(t{6});T0=str2double(t{7});
nu=str2double(t{8});Wbo=str2double(t{9});mu=str2double(t{10});
mi=str2double(t{11});ku=(Univterm(mu))^2;
StressPolygon;
ki=(Univterm(mi))^2;
dP=(MW*3.28*Depth*0.052)-P; Ceff=C0+(dP*ki);
Thetab=(pi-deg2rad(Wbo))/2;
Shm=Shmin(Ceff,P,dP,T0,Thetab);
SHm=SHmax(Shm,P,dP,T0);
scatter(Shm,SHm,500,'.k');
hold off;
figure;
WellboreStress;
S=[Shm SHm Sv];
S1= max(S); S3=min(S);
S2=max(S(S~=max(S)));
figure;
MohrCircle;