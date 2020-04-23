function [ obj ] = object( xc, yc, zc )

r = 200000;
[x,y,z] = sphere;
obj = surf(x*r+xc,y*r+yc,z*r+zc);
set(obj, 'FaceColor', [1 0 0]);
drawnow

end

