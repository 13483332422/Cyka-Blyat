function result = Euler(start,finish,stride,u0)%������ ���,�յ�,����,��ʼֵ
n = (finish - start)/stride;%�����
t = start;%t(0)
u=[];u(1) = u0;%��ʼֵ��ͬ
for i = 1 : n    
    u(i+1) = u(i) + stride * t * u(i)^2;
    t = t + stride;
end
result = u;
% xlswrite('E:\ѧϰ\�����\΢�ַ�����ֵ��\����ϻ�\ʵ����Ŀһ\result.xlsx',u,'Sheet1','B2');
end
