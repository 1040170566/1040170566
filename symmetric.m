function [p,c]=symmetric(array)
%此函数用于列出置换群的所有可能情况
%p为实际置换结果，c为对应循环表示

p=[];
L=length(array);
if L==1
    p=array;
else
    for i=1:L
        q=repmat(array(i),factorial(L-1),1);
        array_new=array;
        array_new(i)=[];
        p_sym=cat(2,q,symmetric(array_new));
        p=cat(1,p,p_sym);
    end
end

if nargout==2
    c=cell(factorial(L),1);
    for j=1:factorial(L)
        c(j)={cycle_pre(array,p(j,:))};
    end
end