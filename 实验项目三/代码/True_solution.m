% %���
% t = 0:0.1:1;
% y = 4/pi^2*sin(pi/2*t);
% y1=0;
% y1(2:11) = Finite_element(10);
% plot(t,y1,':o',t,y,'-*');
% legend('��ɢ����n=10����Ԫ��','���')
%%%%%%%%%%%
% %���
t = 0:1/3:1;
y = 4/pi^2*sin(pi/2*t);
y1=0;
y1(2:4) = Finite_element(3);
plot(t,y1,':o',t,y,'-*');
legend('��ɢ����n=3����Ԫ��','���')
