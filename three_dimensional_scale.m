function [ output_matrix ] = three_dimensional_scale( input_matrix , shx , shy , shz  )
%THREE_DIMENSIONAL_SCALE Summary of this function goes here
%   Detailed explanation goes here

matrix=[shx 0 0 0 ; 0 shy 0 0 ; 0 0 shz 0 ; 0 0 0 1];
output_matrix=input_matrix*matrix;
end

