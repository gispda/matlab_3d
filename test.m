P1=[ 0 1 1 0 0 1 1 0 ; 
      0 0 1 1 0 0 1 1 ;
      0 0 0 0 1 1 1 1 ];

P2=[ 0 1 1 0 0 1 1 0 ; 
      0 0 1 1 0 0 1 1 ;
      0 0 0 0 1 1 1 1 ];  

  trmatrix1=[ 1 0 0 0;
                 0 1 0 0;
                 0 0 1 0;
                 0 0 0 1;
             ];
  
   trmatrix2=[ 1 0 0 0;
                 0 1 0 0;
                 0 0 1 0;
                 0 0 0 1;
             ];        
         
  Faces=[1 2 6 5;
              2 3 7 6;
              3 4 8 7;
              4 1 5 8;
              1 2 3 4;
              5 6 7 8];
 
          
trmatrix1= three_dimensional_translation(trmatrix1 , 1 , 5 , 3);

trmatrix1=three_dimensional_rotate(trmatrix1, 'z', pi/4);
%trmatrix1=three_dimensional_rotate(trmatrix1 ,'y', pi/4);

new_P1=apply_transformation(P1,trmatrix1,8);
new_P2=apply_transformation(P2,trmatrix2,8);          
patch('Vertices',new_P1','Faces',Faces,'FaceVertexCData',hsv(6),'FaceColor','flat');
patch('Vertices',new_P2','Faces',Faces,'FaceVertexCData',hsv(6),'FaceColor','flat');
view(3);
grid on;
axis on;
axis equal;
  
 