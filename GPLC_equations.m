

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

% Generally, the constraints to be imposed on the above minimization
% would enforce geometric relationships among coordinate positions q
% and coordinate velocities q_dot.
% Their form, in general, would be:
% g(q, q_dot, t) = 0;
% and thus apply generally to non-holonomic systems.

% For the Multiagent Navigation system, the constraints are purely on q, or
% in other words, purely geometric relationships dependent on q.
% The form, in this paper, is then:
% g(q, t) = 0;

% This Multiagent system, to be able to handle inequality constraints, converts
% inequality constraints h(q,t) <= 0 into equality constraints.
% To do this, one has to break down what the inequality constraint is:
%%%%%%%%%%%%%%%%%%%%%%%%
% First, we define h(q,t) <= 0 as our constraint.
% Next, because we want the value of h(q,t) less than or equal to zero,
% we can break h up into active and unused constraints.
%%%%%%%%%%%%%%%%%%%%%%%%
% The important step here is, during each iteration, to find all entries of
% h which are positive, then enforce those constraints as equality constraints.
% essentially, h looks like the vector below:
%         |q_1 - q_3|   |  3 |    | 0 | <- included in g
%         |q_2 - q_4|   |  1 |    | 0 | <- included in g
% h(q,t) =|    .    | = |  0 | <= | 0 | <- not included in g
%         |    .    |   | -3 |    | 0 | <- not included in g
%         |    .    |   |  . |    | 0 | <- not included in g
%         |    .    |   |  . |    | 0 | <- not included in g
%         |    .    |   |  . |    | 0 | <- not included in g
% from this set of inequality constraints, assuming that the constraints that
% have a dot in the result are <= zero, only h_1 (the first entry in the h
% vector) and h_2 would be included in the set of g, the set of equality
% constraints.

























% To apply inequality constraints to
