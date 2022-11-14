%% data %%
zeta = 0.3;
omega_n = 10;
delta_t = 0.01;
sigma_2 = 1 / delta_t;
sigma = sqrt(sigma_2);
%% seed for rand %%
rand_seed = floor(rand()*10000);