%% This code plots a graphics_toolkit

t=(0:0.01:2);

y1=sin(t);

y2=cos(t);

y3=exp(.6*t);

y1=y1.*y3;

y2=y2.*y3;

plot(t,y1,'r',t,y2,'b');