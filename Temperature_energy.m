clc 
clear all 
close all 
%for i=1:6
f = fopen('log.lammps');
c = textscan(f,'%s','Delimiter','\n');
lines = c{1}; 
fclose(f); 
%Remove Headers 
lll=[]; 
for i=1:length(lines)
    if isempty(real(str2num(lines{i,1})))==0
        if length((str2num(lines{i,1})))==5 
           lll=[lll;str2num(lines{i,1})];
        end
    end
end
time = lll(:,1);
Temp = lll(:,2); 
KE = lll(:,3); 
PE = lll(:,4); 
Etotal = lll(:,5); 

figure 
plot(1e-6*time,KE,'m','linewidth',2.5)
xlabel('Time (ns)')
%ylabel('Kinetic Energy (kcal/mol)')
set (gca,'fontweight','bold')
xlim([0 1])

hold on 
%figure 
plot(1e-6*time,PE,'g','linewidth',2.5)
xlabel('Time (ns)')
%ylabel('Potential Energy (kcal/mol)')
set (gca,'fontweight','bold')
xlim([0 1])

hold on 
%figure 
plot(1e-6*time,Etotal,'r','linewidth',2.5)
xlabel('Time (ns)')
%ylabel('Toatal Energy (kcal/mol)')
set (gca,'fontweight','bold')
xlim([0 1])

ylabel('Energy (kcal/mol)')
legend('Kinetic Energy','Potential Energy','Total Energy')
title('Energy gradient in Tetracosane molecule vs Time')

hold on 
figure 
plot(1e-6*time,Temp,'b','linewidth',2.5)
xlabel('Time (ns)')
ylabel('Temperature (K)')
set (gca,'fontweight','bold')
xlim([0 1])

legend('Temperature')
title('Temoerature gradient in Tetracosane molecule vs Time')
