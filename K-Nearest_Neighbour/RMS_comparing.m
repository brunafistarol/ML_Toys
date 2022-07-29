%Comparing the root mean square error (RMS) with dimensionality
train_RMS = [];
test_RMS = [];
figure
for d = 1:10
    w = polynomial_fit(x_train, y_train, d);
    fit = (repmat(x', 1, d+1).^(0:d))*w;
    train_RMS = [train_RMS (sum((fit(train_index) - y(train_index)).^2)/size(train_index, 2))^0.5];
    test_RMS = [test_RMS (sum((fit(test_index) - y(test_index)).^2)/size(test_index, 2))^0.5];
end

plot(1:10, train_RMS, 'r')
hold on
plot(1:10, test_RMS, 'g')
legend("Train RMS", "Test RMS")
xlabel('Dimension')
ylabel('RMS')
title('Error measure versus Dimensionality')