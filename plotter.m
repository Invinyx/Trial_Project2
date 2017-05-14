I=imread('d.jpg');
pkg load image
w=size(I,1)
h=size(I,2)
J=double(I);
for i=1:w
  
  for j=1:h
      energy=J(i,j,1)^2+J(i,j,2)^2+J(i,j,3)^2;
      red=double(J(i,j,1));
      energy=sqrt(double(energy));
      if( red/energy>.7)
        I(i,j,1)=204;
        I(i,j,2)=201;
        I(i,j,3)=255;
      endif
    endfor
 endfor
 imshow(I)
 
 imwrite(I,'f2.bmp');