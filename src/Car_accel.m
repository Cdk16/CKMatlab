% Vehicle Acceleration Simulation
% Author: Chris
% Description: Simulates a car's acceleration from rest using basic physics and adjustable parameters.

clear; clc;

%% --- Adjustable Vehicle Parameters ---
m        = 1500;      % Vehicle mass (kg) — affects inertia and acceleration
P_engine = 120000;    % Engine power (W) — defines available tractive force
Cd       = 0.32;      % Drag coefficient — aerodynamic efficiency
A        = 2.2;       % Frontal area (m^2) — surface exposed to airflow
Crr      = 0.015;     % Rolling resistance coefficient — Tyre/road losses
rho      = 1.225;     % Air density (kg/m^3) — affects drag
g        = 9.81;      % Gravity (m/s^2) — used for rolling resistance

%% --- Simulation Parameters ---
t_end = 30;           % Total simulation time (s)
dt    = 0.01;         % Time step (s)
t     = 0:dt:t_end;   % Time vector
v     = zeros(size(t)); % Velocity array (m/s)

%% --- Numerical Integration Loop ---
for i = 2:length(t)
    F_drag = 0.5 * rho * Cd * A * v(i-1)^2;          % Aerodynamic drag
    F_roll = Crr * m * g;                            % Rolling resistance
    F_traction = min(P_engine / max(v(i-1), 1), 8000); % Tractive force (limited)
    a = (F_traction - F_drag - F_roll) / m;          % Acceleration (m/s^2)
    v(i) = v(i-1) + a * dt;                          % Velocity update
end

%% --- Plot Results ---
figure;
plot(t, v * 3.6, 'LineWidth', 1.5); % Convert m/s to km/h
xlabel('Time (s)');
ylabel('Velocity (km/h)');
title('Vehicle Acceleration Simulation');
grid on;

%% --- Display Key Result ---
v_target = 100 / 3.6; % 100 km/h in m/s
idx_100 = find(v >= v_target, 1);
if ~isempty(idx_100)
    fprintf('0–100 km/h time: %.2f seconds\n', t(idx_100));
else
    fprintf('Vehicle did not reach 100 km/h within %.1f seconds.\n', t_end);
end
