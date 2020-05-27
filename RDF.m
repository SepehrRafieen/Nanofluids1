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
r=lll273(:,2); 
RDF273=lll273(:,3);
RDF300=lll300(:,3);
RDF310=lll310(:,3);
RDF320=lll320(:,3);
RDF330=lll330(:,3);
RDF340=lll340(:,3);
RDF350=lll350(:,3);
RDF360=lll360(:,3);
RDF370=lll370(:,3);
RDF380=lll380(:,3);
RDF390=lll390(:,3);
RDF400=lll400(:,3);

figure 
color1=[0,0.4470,0.7410];
plot(r,RDF273,'markerface',color1,'linewidth',2.5); 
xlabel('r(A)'); 
ylabel('Radial Distribution Function g(r)');
set(gca,'fontweight','bold');
hold on 
legend('273K','300K','310K','320K','330K','340K','350K','360K','370K',...
'380K','390K','400K');








