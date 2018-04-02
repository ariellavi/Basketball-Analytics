
## Author: Ariel Lavi <ariellavi@Ariels-MacBook-Pro.local>
## Created: 2018-03-21

## Classify points according to Linear classifier based on 
## Assumes a binary class encoding scheme (i.e. training values are 1 or 0 for class 1, class 2)
## Assumes inputs are all training values
## Linear classifier for each class is of form y(x) = Wx + w0
## selection is based on maximizing y(x) 

##  Here, d is dimensionality of data points
##        N is number of data points

##  Inputs
##    - WMat: A (2 x d+1) matrix, Each row containing respective class weights, with last column biases.
##    - testData: A (d+1 x N) matrix, each column a game data vector, with one additional entry equal to 1
##    - labels: A (N x 1) column vector of labels (1, 0) for class 1, 2 respectively

## Outputs
##    - results: A (N x 1) column vector with predictions (1, 0) for class 1, 2 respectively
##    - accuracy: a number signifying the portion of games correctly labelled


function [results, accuracy] = lin2Classify (WMat, testData, labels)

N = size(labels, 1);
d = size(testData, 1) - 1;

results = ones(N, 1);

rMat = WMat*testData;                   % rMat is a 2 x N matrix 
error = zeros(N,1);                     % error a N-dim vector, with entries 1 for error, 0 for correct 

for i = 1:N
  
  if ( rMat(2,i) > rMat(1,i) )          % if row 2 > row 1, point belongs in class 2
    results(i) = 0;                     % label 0 for class 2
  endif  
  
  if ( results(i) != labels(i) )        % if prediction does not match label, error
    error(i) = 1;
  endif

endfor

accuracy = 1 - ( sum(error) / N )


endfunction
