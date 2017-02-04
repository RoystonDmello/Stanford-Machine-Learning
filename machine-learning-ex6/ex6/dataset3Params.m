function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%


%%
% Code used to find optimum hyperparameters 
% c_vector = [0.01,0.025,0.04,0.07,0.1,0.4,0.8,1] ;
% sigma_vector = c_vector ;

% pred_vector = [] ;

% for i = c_vector,
% 	for j = sigma_vector,
% 		model= svmTrain(X, y, i, @(x1, x2) gaussianKernel(x1, x2, j));
% 		predictions = svmPredict(model,Xval) ;
% 		pred_vector(end + 1,:) = [i j mean(double(predictions ~= yval))] ;
% 	end
% end


% result = pred_vector(pred_vector(:,3) == min(pred_vector(:,3)),:) ;

% C = result(1,1) ;
% sigma = result(1,2) ;

C = 0.8 ;
sigma = 0.1 ;


% =========================================================================

end
