clc 
clear all 
close all 
f = fopen('log-copy.lammps'); 
c = textscan(f,'%s','Delimiter','\n');
c{1}; 
fclose(f);
lll=[];
for i=1:length(lines) 
    if isempty(real(str2num(lines{i,1})))==0
        if length ((str2num(lines{i,1})))==12 
        end 
    end 
end 
time=lll(:,1); 
Temp=lll(:,2);
KE=lll(:,3);
PE=lll(:,4);
Etotal=lll(:,5);
Density=lll(:,6);
MSD=lll(:,7);
D=lll(:,8);
D2=lll(:,9);
lx=lll(:,10);
ly=lll(:,11);
lz=lll(:,12);
D=mean(D); 
D2=mean(D2);
v=1./(Density);
figure
plot (1e-6*time,KE,'r','linewidth',2.5)
xlabel('Time (ns)') 
ylabel('Kinetic Energy (kcal/mol)')
set(gca,'font weight','bold')
xlim([0.1 13]) 
