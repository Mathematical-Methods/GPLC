function retval = func(t,y,M,f,A,b,x_bar,y_bar)

  ZERO = zeros(size(M));




  retval = [M, A(q,x_bar,y_bar)'; A(q,x_bar,y_bar), ZERO]' * [f; b(q_dot,x_bar,y_bar)]

end
