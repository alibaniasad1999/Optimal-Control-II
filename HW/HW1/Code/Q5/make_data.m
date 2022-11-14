clc;
clear;
%% data %%
zeta = 0.3;
omega_n = 10;
delta_t = 0.01;
sigma_2 = 1 / delta_t;
sigma = sqrt(sigma_2);
num_of_sim = 50;
time_of_sim = 100;
%% solve ode simulink %%
saved_data = zeros(length(0:delta_t:time_of_sim), 2, num_of_sim);

for i=1:num_of_sim
    data = sim('model');
    saved_data(:, :, i) = [data.x_1, data.x_2];
    fprintf("num: %d \n ", i)
end
save('sim_data', 'saved_data');

%% ode 45 solve %%
% [t, x] = ode45(@diff_eq,0:delta_t:100, [0, 0]);
% 
% function dxdt = diff_eq(~, x)
% zeta = 0.3;
% omega_n = 10;
% delta_t = 0.01;
% sigma_2 = 1 / delta_t;
% sigma = sqrt(sigma_2);
% dxdt = [x(2);-omega_n^2 * x(1) - 2 * zeta * omega_n * x(2) + normrnd(0, sigma)];
% end