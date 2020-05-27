clc 
clear all 
close all 
f = fopen('MD273.txt');
c = textscan(f,'%s','Delimiter','\n');
lines=c{1}; 
fclose(f); 
lll273=[];
for i=1:length(lines) 
    if isempty (real(str2num(lines{i,1})))==0
        if length ((str2num(lines{i,1})))==2
        end 
    end 
end 
time=lll273(:,1); 
MSD273=lll273(:,2);
MSD300=lll300(:,2);
MSD310=lll310(:,2);
MSD320=lll320(:,2);
MSD330=lll330(:,2);
MSD340=lll340(:,2);
MSD350=lll350(:,2);
MSD360=lll360(:,2);
MSD370=lll370(:,2);
MSD380=lll380(:,2);
MSD390=lll390(:,2);
MSD400=lll400(:,2);

figure 
color1=[0,0.4470,0.7410];
plot(0.000250*time,MSD273,'markerface',color1,'linewidth',2.5);
xlabel('Time (ps)'); 
ylabel('MSD (A^2)');
set(gca,'fontweight','bold'); 
hold on 
legend('273K','300K','310K','320K','330K','340K','350K','360K','370K',...
'380K','390K','400K');




