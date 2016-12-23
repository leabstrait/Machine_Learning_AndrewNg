function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
    nRows = size(X, 1);
    nCols = size(X, 2);
    X_norm = X;
    mu = zeros(1, nCols);
    sigma = zeros(1, nCols);

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
    for col = 1:nCols
        mu(col) = mean(X(:,col));
        sigma(col) = std(X(:,col));
    end
    
    for row = 1:nRows
        X_norm(row,:) = X(row,:) - mu;
        X_norm(row,:) = X_norm(row,:) ./ sigma;
    end
    


% ============================================================

end
