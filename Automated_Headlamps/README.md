# Automated Headlamps

This directory contains the Simulink model and simulation data for an **Automated Headlamp** system, a key feature for vehicle convenience and safety.

---

## System Overview 💡

This project simulates the control logic for an automotive headlamp system. The primary goal is to automatically control the vehicle's headlights based on ambient light conditions.

The logic in the model likely uses a simulated light sensor input to:
* Turn the headlamps **ON** when the ambient light drops below a certain threshold (e.g., at dusk or in a tunnel).
* Turn the headlamps **OFF** when the ambient light is sufficient (e.g., during the day).

---

## Files in This Directory

* **`Automated_Headlamps.slx`**: The main Simulink model file containing the control logic.
* **`Scenario4.mat`**: A MATLAB data file that provides the input scenario (e.g., a time-based series of ambient light data) for the simulation.

---

## How to Use

1.  Open MATLAB.
2.  Load the `Scenario4.mat` file into your MATLAB workspace.
3.  Open the `Automated_Headlamps.slx` model in Simulink.
4.  Run the simulation.
5.  Observe the outputs (e.g., the headlamp status signal) to verify the logic.

### Tools
* **MATLAB**
* **Simulink**
