function [class, m, v, p_class] = density_estimation(data_train)
% model a density using single gaussians
%for each class, calculate sample mean and sample variance
class = unique(data_train(:,end));
m = {};
v = {};
p_class = zeros(1, length(class));

for i = 1:length(class)
    class_idx = data_train(:,end) == i;
    m{i} = mean(data_train(class_idx, 1:end-1));
    v{i} = cov(data_train(class_idx, 1:end-1));
    p_class(i) = sum(class_idx)/length(data_train); %probability of each class - uniform
end

