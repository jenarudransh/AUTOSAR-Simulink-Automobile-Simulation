# AUTOSAR-Simulink-Automobile-Simulation

![Language](https://img.shields.io/github/languages/top/jenarudransh/AUTOSAR-Simulink-Automobile-Simulation?style=flat-square)

A collection of MATLAB/Simulink models demonstrating the control logic for various modern automotive systems. This repository includes simulations for body control modules, safety features, and Advanced Driver-Assistance Systems (ADAS), designed with AUTOSAR principles in mind.

---

## 🚗 Simulated Systems

This repository is organized into modules, each containing a self-contained Simulink simulation with its own model (`.slx`) and data scenario (`.mat`) file.

### Advanced Driver-Assistance Systems (ADAS)
* **`Adaptive_Cruise_Control`**: Adjusts vehicle speed to maintain a safe distance from the vehicle ahead.
* **`Automatic_Emergency_Braking`**: Detects potential collisions and automatically applies brakes.
* **`Blind_Spot_Monitoring`**: Warns the driver of vehicles in their blind spot.
* **`Lane_Keep_Assist`**: Helps steer the vehicle to keep it centered in its lane.
* **`Parking_Assist`**: Simulates logic for automated parking maneuvers.

### Body Control & Safety
* **`ABS_Control_Logic`**: Simulates an Anti-lock Braking System to prevent wheel lock-up during hard braking.
* **`Automated_Headlamps`**: Control logic to automatically turn headlamps on/off based on ambient light.
* **`Battery_Management`**: Simulates a Battery Management System (BMS) for monitoring and controlling a battery pack (e.g., SOC estimation, cell balancing).
* **`Central_Locking_System`**: Logic for controlling the vehicle's central door-locking mechanism.
* **`Engine_Cooling_Fan_Control`**: Temperature-based control logic for the engine's cooling fan.
* **`Motor_Control_With_Safety_Interlock`**: A generic motor controller that includes a safety interlock to prevent operation in an unsafe state.

---

## 🛠️ Technology Stack

* **MATLAB**
* **Simulink**
* **AUTOSAR Blockset** (likely required for many models)
* **Stateflow** (likely used for logical state management)

---

## 🚀 How to Use

1.  Clone the repository:
    ```bash
    git clone [https://github.com/jenarudransh/AUTOSAR-Simulink-Automobile-Simulation.git](https://github.com/jenarudransh/AUTOSAR-Simulink-Automobile-Simulation.git)
    ```
2.  Open MATLAB.
3.  Navigate to one of the project directories (e.g., `Automated_Headlamps`).
4.  Load the associated `.mat` file (e.g., `Scenario4.mat`) into the MATLAB workspace.
5.  Open the `.slx` model file in Simulink.
6.  Run the simulation.
