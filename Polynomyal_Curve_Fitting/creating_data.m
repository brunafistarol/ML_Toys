%dataset is constituted by n points in 2 dimensions, that originate from the sinusoidal function y = sin(2πx)
%with the addition of random noise, which is Gaussian distributed with 0 mean and 0.3 standard deviation

n = 20; %number of points

x = linspace(0, 1, n);
y = sin(2*pi*x)' + randn(n, 1)*0.3; %you can choose another function

%taking the training and testing set
train_index = randperm(n, ceil(n*0.8)); %training with 80% od dataset
test_index = setdiff(1:n, train_index);
x_train = x(train_index);
x_test = x(test_index);
y_train = y(train_index);
y_test = y(test_index);