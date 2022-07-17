# Polynomial Curve Fitting
 This is a simple regression problem. The data for this example is generated from the script _creating.data.m_, which is using the sin function with a random noise.

 After to create the dataset, it is separated into training and testing set. Here, training set comprises 80% of the dataset.

 We shall fit the data using a polynomial function of the form

 $$y(x, \textbf{w}) = w_0 + w_1x + w_2x^2 + \cdots + w_Dx^D = \sum_{j=0}^D w_jx^j$$

 where $D$ is the polynom dimension, x is a sample from dataset, $\textbf{w}$ is a weight vector with dimension $D$ and $y$ is the predicted value.
