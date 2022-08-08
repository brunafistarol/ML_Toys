# K Nearest Neighbour (KNN) for Classification

 This method provides a frequentist approach to classify a point. It is nonparametric, which means probability distributions behind the model are not governed by parameters whose values are to be determined from a dataset.

 The ideia is very simple. Given a dataset and a point p to classificate, calculate the euclidian distace between p and each sample from dataset and select the k-nearest samples from p. The most frequent class between the k-nearest neighbours will be the class atributed to p.

 ## Why is this a good method (depending on your problem)?

This method perform a local density estimation. It is considering a sphere centred on the point we wish to classificate allowing the radius of the sphere to grow until it contains exactly K data points. Choosing the most frequent class under the sphere region we will minimize the probability of misclassification. 

## Programming

We will use the MATLAB's Iris data set. It contains 150 samples with a matrix of four features (measurements on the sepal length, sepal width, petal length, and petal width) and a vector of corresponding classes

