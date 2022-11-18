figure
hold on
axis equal
axis([0 1 0 1]);
in_circule = 0;
max_iteration = 100000;
pi_estimation = zeros(1, max_iteration);
i = 1;
var_ter = 10^-10;
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
        plot(linspace(0, 1, 1000), sqrt(1-(linspace(0, 1, 1000)).^2), 'k',...
    'LineWidth',3)
        print('../../Figure/Bonus/mont_10000', '-depsc');
    end
    pi_estimation(i) = in_circule * 4 / i;
    if i > 100
        if var(pi_estimation(i-10:i)) < var_ter
            break;
        end
    end
    i = i + 1;
end
plot(linspace(0, 1, 1000), sqrt(1-(linspace(0, 1, 1000)).^2), 'k',...
    'LineWidth',3)
print(append('../../Figure/Bonus/mont', string(var_ter)), '-depsc');
pi_mont_final = in_circule * 4 / i;
save(append('var', string(var_ter*10^10), 'data'), "pi_mont_final")


