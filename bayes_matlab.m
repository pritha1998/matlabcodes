clc;
close all;
clear;
c=[0 6 180 12; 0 5.92 190 11; 0 5.58 170 12; 0 5.92 165 10;
   1 5 100 6; 1 5.5 150 8; 1 5.42 130 7; 1 5.75 150 9];
[x,y]=size(c);
t=[6 130 8];
c1=[];
c2=[];
for i=1:x
    if c(i,1)==0
        c1=[c1; c(i,2) c(i,3) c(i,4)];
    else
        c2=[c2; c(i,2) c(i,3) c(i,4)];
    end
end
mmh=mean(c1(:,1)); mmw=mean(c1(:,2));
mmf=mean(c1(:,3)); mfh=mean(c2(:,1));
mfw=mean(c2(:,2)); mff=mean(c2(:,3));
vmh=var(c1(:,1)); vmw=var(c1(:,2));
vmf=var(c1(:,3)); vfh=var(c2(:,1));
vfw=var(c2(:,2)); vff=var(c2(:,3));
p_f=0.5; p_m=0.5;
%for male
p_h_m=(1/(sqrt(2*pi*vmh)))*exp(-((t(1,1)-mmh)^2)/(2*vmh));
p_w_m=(1/(sqrt(2*pi*vmw)))*exp(-((t(1,2)-mmw)^2)/(2*vmw));
p_f_m=(1/(sqrt(2*pi*vmf)))*exp(-((t(1,3)-mmf)^2)/(2*vmf));
%for female
p_h_f=(1/(sqrt(2*pi*vfh)))*exp(-((t(1,1)-mfh)^2)/(2*vfh));
p_w_f=(1/(sqrt(2*pi*vfw)))*exp(-((t(1,2)-mfw)^2)/(2*vfw));
p_f_f=(1/(sqrt(2*pi*vff)))*exp(-((t(1,3)-mff)^2)/(2*vff));
evedence=(p_f*p_h_f*p_w_f*p_f_f)+(p_m*p_h_m*p_w_m*p_f_m);
%%%posterior of female
ps_f=p_f*p_h_f*p_w_f*p_f_f/evedence;
%%% posterior of male
ps_m=p_m*p_h_m*p_w_m*p_f_m/evedence;
if(ps_m>ps_f)
    disp("belongs to male");
else
    disp("belongs to female");
end

