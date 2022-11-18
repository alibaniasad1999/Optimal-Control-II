figure
hold on
axis equal
axis([0 1 0 1]);
in_circule = 0;
max_iteration = 100000;
pi_estimation = zeros(1, max_iteration);
i = 1;
while true
    if i > max_iteration
        break
    end
    x = [rand(1), rand(1)];
    plot(x(1), x(2), '.')
    if sqrt(sum(x.^2)) < 1
        in_circule = in_circule + 1;
    end
    if i == 1000
        plot(linspace(0, 1, 1000), sqrt(1-(linspace(0, 1, 1000)).^2), 'k',...
    'LineWidth',3)
        print('../../Figure/Bonus/mont_1000', '-depsc');
    end
    if i == 10000
        print('../../Figure/Bonus/mont_10000', '-depsc');
    end
    pi_estimation(i) = in_circule * 4 / i;
    if i > 1000
        if abs(pi_estimation(i) - pi_estimation(i-1)) < 0.00001
            break;
        end
    end
    i = i + 1;
end

pi_mont_final = in_circule * 4 / i;


