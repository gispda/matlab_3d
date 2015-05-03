function [ output_matrix ] = three_dimensional_translation(input_matrix , tx , ty , tz)
%THREE_DIMENSIONAL_TRANSFORMATION Summary of this function goes here
%   Detailed explanation goes here

matrix=[ 1 0 0 tx ; 0 1 0 ty ; 0 0 1 tz ; 0 0 0 1];
output_matrix=input_matrix*matrix;


end

