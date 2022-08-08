function [data_train, data_test] = train_test_sets(data, p)
%TRAIN_TEST_SETS Separate the given data into training and testing sets
%where 0<p<1 is the ratio between training set size and data set size
n = length(data);
train_index = randperm(n, ceil(n*p)); %training with 100*p% of dataset
test_index = setdiff(1:n, train_index);
data_train = data(train_index, :);
data_test = data(test_index, :);
end

