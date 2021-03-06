function u = solitonpulse(t,tc,epsilon,N)
  
% This function computes a soliton (sech) amplitude pulse with
% the following parameters:
%
%   N*epsilon*sech(epsilon(t-tc))
% 
% USAGE:
% 
% u = solitonpulse (t);
% u = solitonpulse (t,tc);
% u = solitonpulse (t,tc,epsilon);
% u = solitonpulse (t,tc,epsilon,N);
% 
% INPUT:
% 
% t         vector of times at which to compute u
% tc        center of pulse (default = 0)
% epsilon   scale factor for solition (default = 1)
% N         soliton order (default = 1)
% 
% OUTPUT:
% 
% u         vector of the same size as t, representing pulse
%           amplitude
  
if (nargin < 4)
  N = 1;
end
if (nargin < 3)
  epsilon = 1;
end
if (nargin < 2)
  tc = 0;
end

u = N * epsilon * sech(epsilon * (t-tc));

