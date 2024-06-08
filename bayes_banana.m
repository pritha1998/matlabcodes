clc;
clear;
close all;
data=[400 350 450 ; 0 150 300 ; 100 150 50 ];
%data=data';
for i= 1:3
    for j= 1:3
        p(i,j)= data(i,j)/sum(data(:,j));
    end
end
P_banana= 500/1000;
P_orange=300/1000;
P_other = 200/1000;
%evidence = sum(p,'all');
evidence= P_banana*p(1,1)*p(2,1)*p(3,1)+ P_orange*p(1,2)*p(2,2)*p(3,2)+ P_other*p(1,3)*p(2,3)*p(3,3);
post_banana = P_banana*p(1,1)*p(2,1)*p(3,1)/evidence;
post_orange = P_orange*p(1,2)*p(2,2)*p(3,2)/evidence;
post_other = P_other*p(1,3)*p(2,3)*p(3,3)/evidence;

if(post_banana> post_orange && post_banana> post_other)
    disp("banana is long,sweet and yellow");
elseif (post_orange>post_banana  && post_orange> post_other)
    disp("orange is long,sweet and yellow");
else
    disp("others are long,sweet and yellow");
end
