# CKMatlab
My Matlab Projects
# 🚗 Vehicle Acceleration Simulation (MATLAB)

### Author
Chris Koung

### Overview
This MATLAB project models a car’s acceleration from rest using dynamic equations of motion.  
It calculates velocity over time, determines the 0–100 km/h performance, and visualizes the results through a velocity–time plot.  
The simulation demonstrates how physical parameters such as **vehicle mass** and **engine power** influence acceleration behaviour.

---

## ⚙️ Adjustable Parameters
| Parameter | Description | Typical Range |
|------------|--------------|----------------|
| `m` | Vehicle mass (kg) — affects inertia and acceleration | 1200–2500 |
| `P_engine` | Engine power (W) — defines available tractive force | 80 000–150 000 |
| `Cd` | Drag coefficient — aerodynamic efficiency | 0.25–0.40 |
| `A` | Frontal area (m²) — surface exposed to airflow | 2.0–2.5 |
| `Crr` | Rolling resistance coefficient — tyre/road losses | 0.010–0.020 |
| `rho` | Air density (kg/m³) — affects drag | 1.2–1.3 |
| `g` | Gravity (m/s²) — used for rolling resistance | 9.81 |

---

## 🧮 Simulation Process
1. Define physical parameters and constants.  
2. Compute aerodynamic drag, rolling resistance, and tractive force.  
3. Integrate acceleration over time using Euler’s method.  
4. Plot velocity–time response and calculate 0–100 km/h time.  
5. Export results to CSV and save plots for documentation.

---

## 📊 Results

### Velocity–Time Graph
![Vehicle Acceleration Plot](plots/acceleration_plot.png)


**0–100 km/h time:** 10.06 seconds

---

## 🔍 Parameter Sensitivity Study

### Effect of Vehicle Mass
Increasing mass from **1500 kg → 2500 kg**:
- Slowed acceleration due to higher inertia.
- 0–100 km/h time increased from **6.63 s → 10.06 s**.
- The velocity curve became less steep, showing reduced responsiveness.

**Engineering insight:**  
Heavier vehicles require more tractive force to overcome inertia, highlighting the importance of lightweight design in performance engineering.

### Effect of Engine Power
Increasing engine power from **120 kW → 150 kW**:
- Improved acceleration and reduced 0–100 km/h time.
- The curve steepened, reaching higher velocities faster.
- Demonstrated direct proportionality between power-to-weight ratio and acceleration capability.

**Engineering insight:**  
Higher power output increases available tractive force, improving acceleration until aerodynamic drag becomes dominant at higher speeds.

---

## 🧠 Skills Demonstrated
- MATLAB scripting and numerical integration  
- Vehicle dynamics and system modeling  
- Data visualization and result interpretation  
- Engineering documentation and reproducibility  

---

## 📁 Repository Structure
