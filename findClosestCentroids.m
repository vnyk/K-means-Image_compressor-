function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
%distan = zeros(300,K);
%	J=zeros(300,1);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

	
		%for x=1:size(X(:,1))
			%for i=3 
			%	vec(i,1)=(X(x,1)-centroids(i,1));
			%	vec(i,2)=(X(x,2)-centroids(i,2));
			%	vec=vec'*vec;
			%		end;
			%		
					%for i=1:size(centroids(1:K))
					%for i=1:K
						
					%	distan = bsxfun(@minus, X, centroids(i,:));
					
					%	J=(sum(distan.^2,2));
						
					%end
					%for j=1:300
for i=1:size(X,1)
    temp = X(i,:);
    [A,idx(i,1)] = min(sum(((bsxfun(@minus,temp,centroids)).^2),2));
end

					%idx(j)=min(J(i:i+3,1:1));
					
					%end
					%for i=1:length(idx)
					%for j=1:length(K);
					%	idx(i)=min(J(j));
					%end
					%end


			%J(x,1)=min(vec(:,1));
			%J(x,2)=min(vec(:,2));
			%end


	%	for i=1:K
	%		idx(i)=J(i);	
	%	end	
% =============================================================
end

