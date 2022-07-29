%this program implements a polynomial curve fitting training with dataset in two dimentions
%the goal is to learn the linear coefficients for interpolating polynomials of degree D
%returns the polynomial coefficients

function w = polynomial_fit(x_train, y_train, D)

%learning the coefficients
X = repmat(x_train', 1, D+1).^(0:D);
w = X\y_train;