# understanding how to reference columns / rows
A = [1,2,3,6;
     4,5,6,6;
     7,8,9,6]

# Reference Column
A(:,1)

# Reference Row
A(1,:)

# Return size of vector/matrix
size(A(1,:))

# Return num of rows for 2D matrix
size(A)(1,1)

# Return size of columns for 2D matrix
size(A)(1,2)

# Set iteration count to one for indexing
iteration = 1

# declare B which is a 3x1 column of zeros
B = zeros(3,1)

# Declare an anonymous matrix function
#A = @(q,x_bar,y_bar) [2 * (q(1,1)),0;
#                      2 * (q(2,1)),0]
A = @(q,x_bar,y_bar) [0,0;
                      0,0]


q = [0; 0]


# while interation count is less than or equal to the num of cols
while (iteration <= 4)#size(A)(1,2))

  q = q + [0.1; 0.1]

  # Since the Runge Kutta method has a lot of summation, it would be appropriate
  # to test vector summation in the loop.
  #B = B + A(:,iteration)

  # Evaluate anonymous func
  A(q,0,0)

  # Evaluate the transpose
  A(q,0,0)'

  # Update iteration variable
  iteration = iteration + 1
endwhile

