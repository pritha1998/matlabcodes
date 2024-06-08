clc;
close all;
clear;

x=input('Enter the first parameter:'); %[1,3,5,7,9,2,4,10,8];
y=input('Enter the second parameter:'); %[9,8,7,6,5,4,3,2,1];
x1=input('Enter the first parameter of first centroid:');   %1;
y1=input('Enter the second parameter of first centroid:');  %9;
x2=input('Enter the first parameter of second centroid:');  %5;
y2=input('Enter the second parameter of second centroid:'); %7;
x3=input('Enter the first parameter of third centroid:');   %8;
y3=input('Enter the second parameter of third centroid:');  %1;
M=20;

for k=1:M
    q=1;
    r=1;
    s=1;
    for i=1:length(x)
        d1(i)=sqrt(((x(i)-x1)^2)+((y(i)-y1)^2));
        d2(i)=sqrt(((x(i)-x2)^2)+((y(i)-y2)^2));
        d3(i)=sqrt(((x(i)-x3)^2)+((y(i)-y3)^2));
        if d1(i)<=d2(i) && d1(i)<=d3(i)
            c1(q,1)=x(i);
            c1(q,2)=y(i);
            D1(q)=d1(i);
            q=q+1;
        elseif d2(i)<d1(i) && d2(i)<=d3(i)
            c2(r,1)=x(i);
            c2(r,2)=y(i);
            D2(r)=d2(i);
            r=r+1;
        else %d3(i)<d1(i) && d3(i)<d2(i)
            c3(s,1)=x(i);
            c3(s,2)=y(i);
            D3(s)=d3(i);
            s=s+1;
        end
    end
    x1=mean(c1(:,1));
    y1=mean(c1(:,2));
    x2=mean(c2(:,1));
    y2=mean(c2(:,2));
    x3=mean(c3(:,1));
    y3=mean(c3(:,2));
end

for i=1:length(c1)
        gr=scatter(c1(i,1),c1(i,2),'filled','square','green');
        %c0(i,i)=[x(i),y(i)];
        hold on;
%         xlim([0 10]);
%         ylim([0 10]);
end
for i=1:length(c2)
        rd=scatter(c2(i,1),c2(i,2),'filled','square','red');
        hold on;
end
for i=1:length(c3)
        bl=scatter(c3(i,1),c3(i,2),'filled','square','blue');
        hold on;
end

th1 = 0:pi/50:2*pi;
r1=max(D1)*1.1;
xunit1 = r1 * cos(th1) + x1;
yunit1 = r1 * sin(th1) + y1;
h1 = plot(xunit1, yunit1);
hold on;
th2 = 0:pi/50:2*pi;
r2=max(D2)*1.1;
xunit2 = r2 * cos(th2) + x2;
yunit2 = r2 * sin(th2) + y2;
h2 = plot(xunit2, yunit2);
hold on;
th3 = 0:pi/50:2*pi;
r3=max(D3)*1.1;
xunit3 = r3 * cos(th3) + x3;
yunit3 = r3 * sin(th3) + y3;
h3 = plot(xunit3, yunit3);
legend([gr,rd,bl],'class-0','class-1','class-2');



