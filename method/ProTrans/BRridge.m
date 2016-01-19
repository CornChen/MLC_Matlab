function [Pre_Labels,Outputs] = BRridge(train_data,train_target,test_data)
%BRRIDGE BR with linear Ridge Regression
%   �˴���ʾ��ϸ˵��

% Ridge parameter
lambda = 0.1;

% Ridge Regression
ww = ridgereg(train_target',train_data,lambda);
Outputs = [ones(size(test_data,1),1) test_data] * ww;
Pre_Labels = round(Outputs');
   
end

