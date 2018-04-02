
## Author: Ariel Lavi <ariellavi@Ariels-MacBook-Pro.local>
## Created: 2018-03-18

## Trains 2 Class Linear Classifier with Least Squares for classification
## Assumes a binary class encoding scheme (i.e. training values are 1 or 0 for class 1, class 2)
## Assumes inputs are all training values
## Linear classifier for each class is of form y(x) = Wx + w0
## selection is based on maximizing y(x)

##  Here, d is dimensionality of data points
##        N is number of data points

##  Inputs
##    - dataMat: a (d x N) matrix, N rows with each row a d-dimensional data point
##    - train: a (N x 1) column vector with 1 for class 1, 0 for class 2

##  Outputs
##    - weightMat: A (2 x d+1) matrix, each row contains weights for respective class


function weightMat = lin2ClassLSQ (dataMat, train)

% Initialization Constants
N = size(train, 1);
d = size(dataMat, 1);


% Sanity Check
if ( N != size(dataMat, 2) )
    printf("Initialization error: dimesnions of inputs don't match!");
    exit;
endif

% Compress bias parameter into weight matrix
X = [dataMat; ones(1,N)];                 % X is now (d+1 x N)

% Create training matrix T, each column with 2D t-vector for respective class encoding
t1 = ones(N, 1) - train;
T = [ train'; t1' ];

weightMat = ( inv((X') * X) * (X') )' * T';
weightMat = ( X' \ T' )'



endfunction
