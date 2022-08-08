function class = knn_classifier(data_train,k,x) %x from data_test
n = size(data_train, 1);
dist = (sum((repmat(x(1:end-1), n, 1) - data_train(:, 1:end-1)).^2, 2)).^0.5;
dist = [dist;data_train(:,end)];

end

