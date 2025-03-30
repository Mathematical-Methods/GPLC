%###############################################################################
% An Exploration of "Gauss’s Principle With Inequality Constraints for
% Multiagent Navigation and Control" by Boyang Zhang and Henri P. Gavin
%
%
%###############################################################################

% Section A

% N is the number of agents.
N = int16(1);

% M is the Symmetric Positive Definite (SPD) mass matrix.
M = zeros(2*N);

% a is the unconstrained accelerations related to the net forces due to internal
% and external actions through Newton's Second Law
a = zeros(2*N,1);

% f the net forces due to internal and external actions
% through Newton's Second Law
f = M * a

% q the coordinate position vector (varies with time)
q = zeros(2*N,1);

% q_ddot is the second derivative of q with respect to time. defined manually
% with zeros for simplicity

q_ddot = zeros(2*N,1);

% Now, switching contexts to quadratic programming methods:
% The objective of quadratic programming is to find an n-dimentional vector q
% that will minimize Z
Z = (1/2) * q_ddot' * M * q_ddot - f' * q_ddot



# To apply inequality constraints to
