clc 
clear all 
close all 
f=fopen('Temp.txt')
c=textscan(f,'%s','Delimiter','\n');
lines=c{1};
fclose(f); 
lll=[];
for i=1:length(lines) 
    if isempty (real(str2num(lines{i,1})))==0
        if length ((str2num(lines{i,1})))==21 
            lll=[lll;str2num(lines{i,1})]; 
        end 
    end 
end 
Temp=lll(:,3:20); 
MeanTemp=mean(Temp); 
x=[0 7.5 12.5 17.5 22.5 27.5 32.5 37.5 45 55 62.5 67.5 72.5 ... 
    82.5 87.5 92.5 100];
figure 
plot(x,MeanTemp,'Marker','o','LineWidth',1);
xlabel ('x(Angstrom)')
label  ('T(K)')
set (gca,'fontweight','bold')
xlim([-10 110]) 
lTemp=lll(:,3:11); 
lMeanTemp=mean(lTemp); 
lx=[0 7.5 12.5 17.5 22.5 27.5 32.5 37.5 45]; 
figure 
plot (lx,lMeanTemp,'Marker','o','lineWidth',1) 
rTemp=lll(:,12:20); 
rMeanTemp=mean(rTemp);
rx=[55 62.5 67.5 72.5 77.5 82.5 57.5 92.5 100]; 
figure 
plot(rx,rMeanTemp,'Marker','o','LineWidth') 





        