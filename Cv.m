clc 
clear all 
close all 
f = fopen('log-T.lammps'); 
c=textscan(f,'%s','Delimiter','\n');
lines=c{1}; 
fclose(f); 
lll=[]; 
for i=1:length(lines) 
    if isempty (real(str2num(lines{i,1})))==0 
        if length ((str2num(lines{i,1})))==12 
            lll=[lll;str2num (lines{i,1})]; 
        end 
    end 
end 
time=lll(:,1);
Temp=lll(:,2); 
ke=lll(:,3); 
pe=lll(:,4);
etotal=lll(:,5); 
density=lll(:,6);
v_msd=lll(:,7); 
v_twopoint=lll(:,8); 
v_fitslope=lll(:,9); 
lx=lll(:,10); 
ly=lll(:,11); 
lz=lll(:,12);
Tmean=mean(Temp); 
eo=Etotal; 
e1=e0.^2; 
e2=mean(e1); 
e3=mean(e0); 
e4=e3^2;
e2e4=e2-e4; 
k=1.38e-23; %J/K Boltzmann constant 
T2=Tmean^2; 
soorat= (((e2e4)))/23.0609)/23.0609)*(1.602177e-19)*(1.602177e-19);
makhraj=k*T2; 
c=(soorat/makhraj);
rho=mean(Density); 
D=lll(end-3500:end,8); 
D2=lll(end-3500:end,9); 
D=mean(D); 
D2=mean(D2); 




