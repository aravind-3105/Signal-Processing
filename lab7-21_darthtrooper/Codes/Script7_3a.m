%1st set of values
r = 0.9;
theta = pi/3;
figure;
b = [1, -(2*cos(theta)), 1];
a = [1, -(2*r*cos(theta)), r^2];
zplane(b,a);
title('r = 0.9, theta = pi/3');


%2nd set of values
r = 0.9;
theta = pi/2;
figure;
b = [1, -(2*cos(theta)), 1];
a = [1, -(2*r*cos(theta)), r^2];
zplane(b,a);
title('r = 0.9, theta = pi/2');

%3rd set of values
r = 0.75;
theta = pi/3;
figure;
b = [1, -(2*cos(theta)), 1];
a = [1, -(2*r*cos(theta)), r^2];
zplane(b,a);
title('r = 0.75, theta = pi/3');

%4th set of values
r = 0.75;
theta = pi/2;
figure;
b = [1, -(2*cos(theta)), 1];
a = [1, -(2*r*cos(theta)), r^2];
zplane(b,a);
title('r = 0.75, theta = pi/2');