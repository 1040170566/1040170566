function C=cycle_pre(r1,r2)
%用循环符号表示从群r1到r2的置换操作

R1=r1;
R2=r2;
L1=length(R1);
L2=length(R2);
C={};

while L1~=0 && L1==L2
    i=1;
    place_in_R1=i;
    place_in_r1=find(r1==R1(i));
    while R2(i)~=R1(1)
        j=find(R1==R2(i),1);
        place_in_R1=cat(2,place_in_R1,j);
        place_in_r1=cat(2,place_in_r1,find(r1==R1(j)));
        i=j;
    end
    C=cat(2,C,place_in_r1);
    R1(place_in_R1)=[];
    R2(place_in_R1)=[];
    L1=length(R1);
    L2=length(R2);
end
        
        