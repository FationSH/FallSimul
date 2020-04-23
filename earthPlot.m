function [ ] = earthPlot( xc,yc,zc )

%% Options
npanels = 180;   % Number of globe panels around the equator deg/panel = 360/npanels
alpha   = 0.3; % globe transparency level, 1 = opaque, through 0 = invisible

% Earth texture image
%image_file = 'http://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Land_ocean_ice_2048.jpg/1024px-Land_ocean_ice_2048.jpg';

% Mean spherical earth
erad    = 6371008.7714; % equatorial radius (meters)
prad    = 6371008.7714; % polar radius (meters)

%% Create wireframe globe
% Create a 3D meshgrid of the sphere points using the ellipsoid function
[x, y, z] = ellipsoid(xc, yc, zc, erad, erad, prad, npanels);

globe = surf(x, y, -z, 'FaceColor', 'none', 'EdgeColor', 0.5*[1 1 1]);

%% Texturemap the globe
cdata = imread('earth.jpg');

set(globe, 'FaceColor', 'texturemap', 'CData', cdata, 'FaceAlpha', alpha, 'EdgeColor', 'none');

end
