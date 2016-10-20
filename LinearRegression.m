%% 线性回归
%% Linear Regression
%% -----LNU Splendid
 

%  说明
%  ------------
% 
%  简单的利用梯度下降方法，计算线性回归，即线性拟合。
%  只设置两个参数
%  iterations ： 梯度下降的迭代次数
%  alpha ： 下降速度
%
%  y = theta_1 + theta_2 * x
%
%
%
%

%% 初始化
clear ; close all; clc
%% ======================= Part 1: 设置参数 =======================
iterations = 1500;
alpha = 0.01;

%% ======================= Part 2: 读入数据 =======================
fprintf('读入数据 ...\n')

% 读入数据并导入X,y
data = load('data.txt');
X = data(:, 1); y = data(:, 2);
% 求训练组数量
m = length(y); 
% 显示数据
figure;
plot(X, y, 'rx', 'MarkerSize', 10);
ylabel('Y');
xlabel('X');

% 可删除此句
fprintf('\n任意键继续.\n\n');
pause;

%% ======================= Part 3: 梯度下降 =======================
fprintf('计算梯度下降 ...\n')

% 增加一列1
X = [ones(m, 1), data(:,1)];

% 初始化theta y = theta_1 + theta_2 * x
theta = zeros(2, 1); 

% 运行梯度下降
theta = gradientDescent(X, y, theta, alpha, iterations);

% 输出theta数据
fprintf('theta数据如下: ');
fprintf('theta_1: %f   theta_2: %f \n', theta(1), theta(2));
fprintf('计算公式为: Y = %f + %f * X \n', theta(1), theta(2));

% 画出线性拟合曲线
hold on; 
plot(X(:,2), X*theta, '-')
legend('训练数据', '线性回归')
hold off 

% 可删除此句
fprintf('\n任意键继续.\n\n');
pause;
clear ; close all; clc



















