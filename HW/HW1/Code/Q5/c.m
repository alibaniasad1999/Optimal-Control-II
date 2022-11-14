clc;
clear;
delta_t = 0.01;
time_of_sim = 100;
time = 0:delta_t:time_of_sim;
num_of_sim = 50;
load('sim_data.mat');
time_index = find(time == 30);
data = saved_data(time_index, 1, :);
histogram(data)
print -depsc ../../Figure/Q5/part_c/histogram