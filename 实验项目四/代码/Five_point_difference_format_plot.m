%��ͼ
result=Five_point_difference_format(0,2,0,2,50,50);%�����Ϊ50��
j = 1;
for i = 1:49:2401
z(j,1:49) = result(i:i+48);%��������תΪ�������
j  = j +1;
end
[x,y] =meshgrid(0.04:0.04:2-0.04);
subplot(1,2,1)
mesh(x,y,z);
title('����ָ�ʽ��');
subplot(1,2,2)
mesh(x,y,x.^2-y.^2);
title('���');
