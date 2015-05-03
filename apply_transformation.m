function [ output_matrix ] = apply_transformation( vertex_matrix,input_matrix , nvertex)
%APPLY_TRANSFORMATION Summary of this function goes here
%   Detailed explanation goes here
output_matrix=[];
for i=1:nvertex
    vertex=vertex_matrix( : , i);
    vertex=[vertex;1];
    new_vertex=input_matrix*vertex;
    output_matrix=[output_matrix, new_vertex];
    
end
    output_matrix(4 , :)=[]
end

