mu = 3.986004415e5; % km^3/s^2
r_n = 6800;
n = sqrt(mu/r_n^3);
A = [0 0 1 0;
     0 0 0 1;
  3*n^2 0 0 2*n*r_n;
    0 0 -2*n/r_n 0];

C = [1 1 0 0];

Ob =   [C;
        C*A;
        C*A^2;
        C*A^3];

rank_obs = rank(Ob);
if rank_obs == length(A)
    fprintf('System is observable.\n')
else
    fprintf('System is not observable.\n')
end