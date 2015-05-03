


nfaces=8;
trmatrix=[ 1 0 0 0 ; 0 1 0 0 ; 0 0 1 0 ; 0 0 0 1];
teta=0:2*pi/nfaces:2*pi*(1-1/nfaces);
figure; 
x=cos(teta); 
y=sin(teta); 
P=[x,0;y,0;zeros(size(x)),1]; % add z and vertex of the pyramid (3D points) 
lateral_faces=reshape(floor([1,2:0.5:nfaces+0.5,1]),2,nfaces)';
 F=[ 1:nfaces; % base 
        [lateral_faces,(nfaces+1)*ones(nfaces,1), NaN*ones(nfaces,nfaces-3)] ]; % faces 
patch('Vertices',P','Faces',F,'FaceVertexCData',hsv(nfaces+1),'FaceColor','flat'); 

view(3); 
xlabel('x');
ylabel('y');
zlabel('z');


figure;
trmatrix=three_dimensional_rotate(trmatrix, 'y', pi/2);
trmatrix=three_dimensional_rotate(trmatrix, 'z', pi);
trmatrix=three_dimensional_rotate(trmatrix, 'x',-(pi/2));
new_P=apply_transformation(P,trmatrix,nfaces+1);
patch('Vertices',new_P','Faces',F,'FaceVertexCData',hsv(nfaces+1),'FaceColor','flat'); 


view(3); 
xlabel('x');
ylabel('y');
zlabel('z');



%{
trmatrix= three_dimensional_translation(trmatrix , 1 , 0 , 8);
trmatrix=three_dimensional_rotate(trmatrix, 'z', pi/2);
trmatrix=three_dimensional_rotate(trmatrix, 'y', pi/2);

new_P=apply_transformation(P,trmatrix,nfaces+1);
count=0;
M(360) = struct('cdata',[],'colormap',[]);
grid on;
axis on;
axis equal;
for j=0:2*pi/180:2*pi
    trmatrix=three_dimensional_rotate(trmatrix, 'z', 2*pi/180);    
    new_P=apply_transformation(P,trmatrix,nfaces+1);    
    lateral_faces=reshape(floor([1,2:0.5:nfaces+0.5,1]),2,nfaces)';     
    F=[ 1:nfaces; % base 
        [lateral_faces,(nfaces+1)*ones(nfaces,1), NaN*ones(nfaces,nfaces-3)] ]; % faces 
   
    M(count)=getframe;
    count=count+1;
end
%}

numtimes=3;
fps=10;
movie(M,numtimes,fps);





