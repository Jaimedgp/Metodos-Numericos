function p=interpola_lagrange(a,b,x,plotme)
% dados datos a,b calcula el poli_lagrange en x
% si plotme es 1 hace un dibujo, si no pues no
k=length(a);
p=zeros(size(x)); %el output tiene tamanno x.
for i=1:k
    % Calculamos li(x):
    li=1;
    for j=1:k
        if j~=i
            li=li.*(x-a(j))/(a(i)-a(j));
        end
    end
    % hacemos algo con li
    p=p+b(i)*li;
end
if plotme==1
    clf
    hold on
    plot(a,b,'x')
    plot(x,p,'k');
    hold off
end