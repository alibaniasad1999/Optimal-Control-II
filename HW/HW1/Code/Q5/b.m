clc;
clear;
delta_t = 0.01;
time_of_sim = 100;
time = 0:delta_t:time_of_sim;
num_of_sim = 50;
load('sim_data.mat');
fprintf("%.4f\n ", mean(saved_data(:, 2, 1)));
