# Linear Classifier

Uses a linear classifier to classify a game vector as either a home team win (class 1) or home team loss (class 2). The function 
y(x) = wx + w0 is calculated for each class with a different set of weights w, and assigns class label to a game vector x to the class corresponding to the maximum value of y(x) = wx + w0.  

Each game vector is d x 1, with d being the number of statistics considered for each team. The ith entry of a given game vector is the difference between the home and away team's ith statistic, for i = 1, 2, ..., d. 

W is a 2 x d matrix, with each row containing the weights w for the respective class. 

When training, each game vector has an associated class label 1 or 0, for a home team victory or loss, respectively.

To optimize W, we used least squares minimization. 
