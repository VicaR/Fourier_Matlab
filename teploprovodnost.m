clear all
k=0;
j=0;
i=0;
z=[0:0.1:1];
t=[0:0.01:0.1];
f=nach_raspred(z);
plot(z,f)
xlabel z; ylabel V
hold on;
set(findobj('Type','line'),'Color','r')
for i=1:10
for j=1:11
for n=1:2:100
    k=k+1;
          Z(k)=Zfunk(n,z(j));   
          a(k)=integral(n);
          T(k)=Tfunk(n,t(i),a(k));
          v(k)=reshenie(Z(k),T(k));
end
V(i,j)=sum(v);
k=0;
end
plot(z,V)
hold on;
end


