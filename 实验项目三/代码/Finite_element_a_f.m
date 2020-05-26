%����a(u,v) = ����(u'v'+pi^2/4*uv)�� ����(f,��)
function [k_cache,b_cache]= Finite_element_a_f(a,h,x,Interval_number)
%�����ֱ��� a�����Ҷ˵�,h����,x�˵����,������ɢ�ɵ��������
k_cache = zeros(Interval_number,Interval_number);%�������,���ÿ�μ���õ��ĵ��վ���
b_cache = zeros(Interval_number,1);%ͬ��
syms t%�����ֵ������
fail_l = ( x(a) - t )/h;
fail_r = ( t - x(a-1) )/h;
if a == 2
    fail_l = 0;end %��һ��С����û�Ц���
%%%%%%%%%%%%%%%%%%%%
%�����������������˼��:����ÿ��С�����϶�Ӧ���Ҷ˵�Ĳ�ֵ������,ѭ������
%���� �����һ��С����x1��Ӧ�Ĳ�ֵ������fail1ʱ,x1�ڵ�һ�������϶�Ӧ����
%һ�������Ҷ˵�,��ʱx1��Ӧ������Ӧ�ô���fail_r��
%�����ڵڶ���С�����ϼ����µ�fail1��fail2ʱ,��ʱx1�Եڶ���С�������˵�
%��ʱx1��Ӧ�Ļ�����Ӧ�ô���fail_l��
%%%%%%%%%%%%%%%%%%%%
%����ϵ������ı�������
a1 = diff(fail_l)*diff(fail_l) + pi^2/4*fail_l*fail_l;%����
a2 = diff(fail_l)*diff(fail_r) + pi^2/4*fail_l*fail_r;%���Ϻ�����
a3 = diff(fail_r)*diff(fail_r) + pi^2/4*fail_r*fail_r;%����
if a==2 a1=0;a2=0;end %��һ��С����ϵ����ֻ�����Ͻ���Ԫ��,��������Ͻ�Ԫ������fail_r��fail_r�õ���
%��������ı�������
b1 = 2*sin(pi/2 * t) * fail_l;
b2 = 2*sin(pi/2 * t) * fail_r;
if a == 2 %��һ��С����ϵ������ͽ����ļ���
    k_cache(1,1) = int(a3,t,x(a-1),x(a));
    b_cache(1) = int(b2,t,x(a-1),x(a));
else%����С����ϵ������ͽ����ļ���
    k_cache(a-2,a-2) = int(a1,t,x(a-1),x(a));
    k_cache(a-2,a-1) = int(a2,t,x(a-1),x(a));
    k_cache(a-1,a-2) = k_cache(a-2,a-1);
    k_cache(a-1,a-1) = int(a3,t,x(a-1),x(a));
    b_cache(a-2) = int(b1,t,x(a-1),x(a));
    b_cache(a-1) = int(b2,t,x(a-1),x(a));
end
end