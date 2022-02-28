using LinearAlgebra

h=1/3
q=10
a=[0 0 0 0
1 -2 1 0
0 1 -2 1
0 0 0 0]
det(a)
a[1,1]=1
a[1,2]=0
a[2,1]=0
a[4,4]=1
a[3,4]=0
a
begin
b=[10;q*h^2;q*h^2;5]
for j=2:3
b[j,1]=b[j,1]-(a[j-1,1]*10)-(a[j+1,4]*5)
end
b
end
c=inv(a)*b