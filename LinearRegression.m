%% ���Իع�
%% Linear Regression
%% -----LNU Splendid
 

%  ˵��
%  ------------
% 
%  �򵥵������ݶ��½��������������Իع飬��������ϡ�
%  ֻ������������
%  iterations �� �ݶ��½��ĵ�������
%  alpha �� �½��ٶ�
%
%  y = theta_1 + theta_2 * x
%
%
%
%

%% ��ʼ��
clear ; close all; clc
%% ======================= Part 1: ���ò��� =======================
iterations = 1500;
alpha = 0.01;

%% ======================= Part 2: �������� =======================
fprintf('�������� ...\n')

% �������ݲ�����X,y
data = load('data.txt');
X = data(:, 1); y = data(:, 2);
% ��ѵ��������
m = length(y); 
% ��ʾ����
figure;
plot(X, y, 'rx', 'MarkerSize', 10);
ylabel('Y');
xlabel('X');

% ��ɾ���˾�
fprintf('\n���������.\n\n');
pause;

%% ======================= Part 3: �ݶ��½� =======================
fprintf('�����ݶ��½� ...\n')

% ����һ��1
X = [ones(m, 1), data(:,1)];

% ��ʼ��theta y = theta_1 + theta_2 * x
theta = zeros(2, 1); 

% �����ݶ��½�
theta = gradientDescent(X, y, theta, alpha, iterations);

% ���theta����
fprintf('theta��������: ');
fprintf('theta_1: %f   theta_2: %f \n', theta(1), theta(2));
fprintf('���㹫ʽΪ: Y = %f + %f * X \n', theta(1), theta(2));

% ���������������
hold on; 
plot(X(:,2), X*theta, '-')
legend('ѵ������', '���Իع�')
hold off 

% ��ɾ���˾�
fprintf('\n���������.\n\n');
pause;
clear ; close all; clc



















