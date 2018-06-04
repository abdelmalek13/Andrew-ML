function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
temp_cent=zeros(size(X,1),K);
% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
_ = zeros(size(X,1),1);
% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
for i=1:K
temp_cent(:,i)=sqrt(sum((X - centroids(i,:)) .^ 2,2));
temp_cent(:,i)=sqrt(sum((X - centroids(i,:)) .^ 2,2));
temp_cent(:,i)=sqrt(sum((X - centroids(i,:)) .^ 2,2));
end
[_,idx] = min(temp_cent,[],2);





% =============================================================

end

