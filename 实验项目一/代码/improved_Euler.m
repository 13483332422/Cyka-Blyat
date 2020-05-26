function result = improved_Euler(start,finish,stride,u0)%������ ���,�յ�,����,��ʼֵ
%Ԥ�������ĸĽ���ŷ����
n = (finish - start)/stride;%�����
u=[];u(1) = u0;%u(1)��ʵ���ϵ�u(0)
t = start;%t(0)
for i = 1 : n
    u(i+1) = u(i) + stride/2*( ... 
            t * u(i)^2 ... % f(t,u)= t(i)*u(i)^2       
                          +...
           ( t + stride )*( u(i) + stride*  t *u(i)^2 )^2  );
             %f( t+h,u(i+1) ) = t(i+1)*(u(i) + h*f(t,u))^2,Ԥ������  
     t = t + stride;
end
result = u;
% xlswrite('E:\ѧϰ\�����\΢�ַ�����ֵ��\����ϻ�\ʵ����Ŀһ\result.xlsx',u,'Sheet1','B3');
end