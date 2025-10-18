# Engine Cooling Fan Control

This directory contains the Simulink model and simulation data for an **Engine Cooling Fan Controller**.

---

## System Overview 🌡️

This project simulates the control logic for a vehicle's engine cooling fan. The primary goal of this system is to maintain the engine's temperature within its optimal operating range by activating a fan when the coolant temperature exceeds a specific threshold.

The logic in this model likely:
* Monitors the engine coolant temperature as an input.
* Turns the cooling fan **ON** when the temperature rises above a setpoint (e.g., 95°C).
* Turns the cooling fan **OFF** once the temperature drops back to a safe level (e.g., 90°C), incorporating hysteresis to prevent the fan from cycling rapidly.

---

## Files in This Directory

* **`Engine_Cooling_Fan_Control.slx`**: The main Simulink model file containing the control logic.
* **`Scenario5.mat`**: A MATLAB data file that provides the input scenario (e.g., a time-based series of engine temperature data) for the simulation.

---

## How to Use

1.  Open MATLAB.
2.  Load the `Scenario5.mat` file into your MATLAB workspace.
3.  Open the `Engine_Cooling_Fan_Control.slx` model in Simulink.
4.  Run the simulation.
5.  Observe the outputs (e.g., the fan status signal) in relation to the input temperature to verify the control logic.

### Tools
* **MATLAB**
* **Simulink**
