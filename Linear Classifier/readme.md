# Linear Classifier

Uses a linear classifier to classify a game vector as either a home team win (class 1) or home team loss (class 2). The function assigns class label to a game vector x depending on whether the value of y(x) = Wx + w0 is greater than or less than 0. 
(i.e. if y(x) > 0, class 1. If y(x) < 0, class 2).

Each game vector is d x 1, with d being the number of statistics considered for each team. The ith entry of a given game vector is the difference between the home and away team's ith statistic, for i = 1, 2, ..., d.

When training, each game vector has an associated class label 1 or 0, for a home team victory or loss, respectively.
