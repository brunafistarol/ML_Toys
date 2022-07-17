%Fit Plotting
D = 4; %dimension
w = polynomial_fit(x_train, y_train, D);

x_aux = linspace(0, 1);
original = sin(2*pi*x_aux);
fit = (repmat(x_aux', 1, D+1).^(0:D))*w;

figure
plot(x, y, 'bo')
hold on
plot(x_aux, fit', 'r')
plot(x_aux, original, 'g')
legend("Dataset", "Model", "Original sinusoidal function")
xlabel('x')
ylabel('y')
title('Polynomial curve fitting')