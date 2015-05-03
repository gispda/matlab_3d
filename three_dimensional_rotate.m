function [ output_matrix ] = three_dimensional_rotate( input_matrix , axis, theta )
%THREE_DIMENSIONAL_ROTATE Summary of this function goes here
%   Detailed explanation goes here

if  axis== 'z' 
     matrix=[cos(theta) sin(theta) 0  0 ; -sin(theta) cos(theta) 0 0 ; 0 0 1 0 ; 0 0 0 1];
elseif axis=='x'
      matrix=[1 0 0 0 ; cos(theta) sin(theta) 0 0 ; -sin(theta) cos(theta) 1 0 ; 0 0 0 1 ];
else 
       matrix=[cos(theta) sin(theta) 0 0;1 0 0 0  ; -sin(theta) cos(theta) 1 0 ; 0 0 0 1 ];    
end

 output_matrix=input_matrix*matrix;
    
end
