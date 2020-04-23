%% Create figure
t = 0;

space_color = 'k';
figure('Color', space_color);
x0=10;
y0=10;
width=1000;
height=600;
set(gcf,'units','points','position',[x0,y0,width,height])
movegui('northeast') % move top right corner of screen

sunPlot(0,0,0);         % Sun
drawnow

hold on;

% Turn off the normal axes
% set(gca, 'NextPlot','add', 'Visible','off');
% 
% axis equal;
% axis auto;

% Set initial view
view(0,0);
axis vis3d;

earthPlot(50000000,50000000,0);
drawnow

ht = 6371008.7714*cosd(0.0000392654*t);
obj = object(50000000,50000000,ht);

while (1)
    ht = 6371008.7714*cos(0.00115*t);
    
    % delete last object plot
    if exist('obj','var') == 1
        set(obj,'Visible','off');
    end
    
    obj = object(50000000,50000000,ht);

    t=t+10;
    if mod(t,60) == 0
        xlabel(['Time: ',num2str(t/60),' min'],'FontSize',12,'FontWeight','bold','Color','r');
    end
end
