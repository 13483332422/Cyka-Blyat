function result = Adams(start,finish,stride,u0 )%������ ���,�յ�,����.,u(0),�˴���Ϊ2�׵�
n = (finish - start)/stride;%�����
%��ĿҪ�����2�׵�Adams��巨,����ֻ����һ�����ĳ�ʼֵ,��˻���Ҫһ����ʼֵ
%���øĽ�ŷ������u1����Ԥ��,�������е�u(2)
u=[];u(1) = u0;%u(1)��ʵ���ϵ�u(0)
t = start;%t(0)
u(2) = u(1) + stride/2*( ... 
            t * u(1)^2 ... % f(t,u)= t(i)*u(i)^2       
                          +...
           ( t + stride )*( u(1) + stride*  t *u(1)^2 )^2  );
             %f( t+h,u(i+1) ) = t(i+1)*(u(i) + h*f(t,u))^2,Ԥ������  
t = t + stride; 
% �Ӷ��õ�u0 u1������ʼֵ �ֱ�洢��u(1)u(2)��
for i  = 2:n
    u(i+1) = u(i) + stride/2*( 3*t*u(i)^2 - (t-stride)*u(i-1)^2 );
    t = t + stride; 
end
result = u;
% xlswrite('E:\ѧϰ\�����\΢�ַ�����ֵ��\����ϻ�\ʵ����Ŀһ\result.xlsx',u,'Sheet1','B4');
end