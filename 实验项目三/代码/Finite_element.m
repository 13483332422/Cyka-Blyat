function result = Finite_element(Interval_number)%����������ɢ�ɵ��������
h = 1/Interval_number;%����
k = zeros(Interval_number,Interval_number);%�նȾ���-ϵ������
b = zeros(Interval_number,1);%�նȾ���-�����
Number_nodes = Interval_number + 1;%�������������������+1
x(1) =0;%������
for i = 2:Number_nodes  
        x(i) = x(1)+ (i-1)*h;
end
for a = 2:Number_nodes %a=2ʱ,�õ�����a(��1,��1)
    [result1,result2] =  Finite_element_a_f(a,h,x,Interval_number);
    k = k + result1;
    b = b + result2;
end
result = k\b;%����y
end
