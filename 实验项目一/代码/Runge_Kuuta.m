function result = Runge_Kuuta(start,finish,stride,u0)%������ ���,�յ�,����.
%��ĿҪ���ļ��Ľ׷���,��Ӧ m  = 4 , f = tu^2 
u0 = 1 ; %������ʼֵ
t = start;%t(0)
n = (finish - start)/stride;%�����
u=[];u(1) = u0;%u(1)ʵ�ʵ�u(0)
for i  = 1:n
    k1 = t*u(i)^2;
    k2 = (t + stride/2)*(  u(i) +  stride/2 * k1)^2;
    k3 = (t + stride/2)*(  u(i) +  stride/2 * k2)^2;
    k4 = (t + stride)  *(  u(i) +  stride   * k3)^2;
    u(i+1) = u(i) + stride/6*( k1 + 2*k2 + 2*k3 + k4);
    t = t + stride;
end
result = u ;
% xlswrite('E:\ѧϰ\�����\΢�ַ�����ֵ��\����ϻ�\ʵ����Ŀһ\result.xlsx',u,'Sheet1','B5');
end
