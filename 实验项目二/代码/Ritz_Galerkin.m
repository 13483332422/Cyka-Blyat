function result = Ritz_Galerkin(n)
%������
%�Ƶ��ɵ�a(u,v) = uv+u'v'
%f(x) = x^2
for i = 1:n
    for j = 1:i
        a(i,j) = Ritz_Galerkin_integral_a(i,j);
        a(j,i) = a(i,j);
    end
end
for i = 1:n
    f(i) =  Ritz_Galerkin_integral_f(i);
end
c = a\f';%���c
syms x
result = 0;
for i = 1:n
    result = result + c(i)*sin(i*pi*x);%������ʽ
end
result = result + x;
end