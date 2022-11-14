%% load data %%
clc;
clear;
delta_t = 0.01;
time_of_sim = 100;
time = 0:delta_t:time_of_sim;
num_of_sim = 50;
load('sim_data.mat');
%% part a %%
dir = '../../Figure/Q5/part_a/';
set(gca, 'FontSize', 16, 'FontName', 'Times New Roman');
for i=1:num_of_sim
    plot(time, saved_data(:, 1, i))
    xlabel('Time$(\sec)$', 'Interpreter','latex');
    
    set(gca, 'FontSize', 16, 'FontName', 'Times New Roman');
    ylabel('$x_1$', 'Interpreter','latex', 'FontSize',24);
    print(append(dir, string(i)), '-depsc');
end
