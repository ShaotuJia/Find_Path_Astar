%This function is to remove element from array

function [a]= remove(a,x)

I=find(a==x);
a(I)=[];

end