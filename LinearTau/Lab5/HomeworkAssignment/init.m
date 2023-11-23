clear all

T = 8; % seconds; Maximum operating time
R_pr = 90; % procents; Circle radius
X = 0.1; % meters; X size field
Y = 0.1; % meters; Y size field
J_screw = 0.006; % kg*m^2; Screw ineetia 
i = 12; % transfer ratio
r = 0.002; %m screw radius
m = 0.1; % rg; Pen mass
mu = 0.03
vis_friction_koef = 0.001

J_gear = 0.002; % kg*m^2
r_t = X * R_pr / (2*100);

x0 = 0;
y0 = 0;
vy_0 = 0;
vx_0 = 0;
ax_0 = 0;
ay_0 = 0;


step_time = 0.00001
time = 0:step_time:T;
s= (-2/T^3)*time.^3+(-3*(-2/T^3)*T/2)*time.^2;
%polozhen = [r_t * cos(2 * pi * s);  r_t * sin(2 * pi * s)] * 1000;
polozhen = [13*(cos(4*pi*s)-cos(6.5*4*pi*s)/6.5); 13*(sin(4*pi*s)-sin(6.5*4*pi*s)/6.5)]
skor = diff(polozhen,1,2) ./ step_time;
skor = [0 skor(1,:); 0 skor(2,:)];
acceleration = diff(skor,1,2) ./ step_time;
acceleration = [0 acceleration(1,:); 0 acceleration(2,:)];

M_x = [(J_screw) .* acceleration(1,:)] ./ i;
M_y = [(J_screw ) .* acceleration(2,:)] ./ i;

M_x = [time; M_x]';
M_y = [time; M_y]';


