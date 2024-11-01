function [x,w_new]= prox_l1_weight(b,lambda,w,tau)
if nargin<4
    tau=5;
end
% The proximal operator of the l1 norm
% 
% min_x lambda*||w\otimes x||_1+0.5*||x-b||_2^2
%
% version 1.0 - 18/06/2016
%
% Written by Canyi Lu (canyilu@gmail.com)
% 

x = max(0,b-lambda.*w)+min(0,b+lambda.*w);
w_new = calcWeights_Welsch_tensor(x,tau);