function [ ] = sunPlot( xc, yc, zc )

r = 10000000;

[x,y,z] = sphere;
surf(x*r+xc,y*r+yc,z*r+zc);
colormap hot;

end

