clc;
clear;
%% data %%
zeta = 0.3;
omega_n = 10;
delta_t = 0.01;
sigma_2 = 1 / delta_t;
sigma = sqrt(sigma_2);
num_of_sim = 1000;
time_of_sim = 100;
%% solve ode simulink %%
saved_data = zeros(length(0:delta_t:time_of_sim), 2, num_of_sim);

for i=1:num_of_sim
    data = sim('model');
    saved_data(:, :, i) = [data.x_1, data.x_2];
    fprintf("num: %d \n ", i)
end
save('sim_data_extra', 'saved_data');

%% part b %%
fprintf("%.4f\n ", mean(saved_data(:, 2, 1)));
%% part c %%
time = 0:delta_t:time_of_sim;
time_index = time == 30;
data = saved_data(time_index, 1, :);
histogram(data)
set(gca, 'FontSize', 16, 'FontName', 'Times New Roman');
print -depsc ../../Figure/Q5/extra/histogram_30
fprintf("mean: %.4f\n ", mean(data));
fprintf("variance: %.4f\n ", var(data));
%% part d %%
time_index = find(time == 80);
data = saved_data(time_index, 1, :);
histogram(data)
set(gca, 'FontSize', 16, 'FontName', 'Times New Roman');
print -depsc ../../Figure/Q5/extra/histogram_80
fprintf("mean: %.4f\n ", mean(data));
fprintf("variance: %.4f\n ", var(data));