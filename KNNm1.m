clc;
close all;
close all;
x=input('Enter the first parameter:');
y=input('Enter the second parameter:');
c=input('Enter the class:');
k=input('Enter the k value:');
a=input('Enter the first parameter value of the test point:');
b=input('Enter the second parameter value of the test point:');
distance=[];
c1=c;
for i=1:length(x)
    e=sqrt((x(i)-a)^2+(y(i)-b)^2);
    distance=[distance e];
end
temp=0;
gemp=0;
for i=1:length(distance)
    for j=1:(length(distance)-i)
        if(distance(j)>distance(j+1))
            temp=distance(j);
            distance(j)=distance(j+1);
            distance(j+1)=temp;
            gemp=c(j);
            c(j)=c(j+1);
            c(j+1)=gemp;
        end
    end
end
classy=[];
for i=1:k
    classy=[classy c(i)];
end
output=mode(classy);
v1=x';
v2=y';
v3=c1';
tbl=table(v1,v2,v3);
for i=1:length(c1)
    if c1(i)==0
        g=scatter(x(i),y(i),'filled','square','green');
        %c0(i,i)=[x(i),y(i)];
        hold on;
        xlim([0 10])
        ylim([0 10]);
    else
        bl=scatter(x(i),y(i),'filled','square','yellow');
        xlim([0 10])
        ylim([0 10]);
        hold on;

    end
end
