# Central Locking System

This directory contains the Simulink model and simulation data for a vehicle's **Central Locking System**.

---

## System Overview 🔒

This project simulates the control logic for a central locking system. This is a convenience feature that allows the driver to lock and unlock all the car doors simultaneously, typically using a key fob or a switch inside the vehicle.

The logic in this model likely responds to inputs (e.g., "lock button pressed," "unlock button pressed," "vehicle speed") to control the state of the door actuators.

---

## Files in This Directory

* **`Central_Door_Locking_System.slx`**: The main Simulink model file containing the control logic.
* **`Scenario3.mat`**: A MATLAB data file that provides the input scenario (e.g., a sequence of lock/unlock commands) for the simulation.

---

## How to Use

1.  Open MATLAB.
2.  Load the `Scenario3.mat` file into your MATLAB workspace.
3.  Open the `Central_Door_Locking_System.slx` model in Simulink.
4.  Run the simulation.
5.  Observe the outputs (e.g., the lock status of each door) to verify the logic.

### Tools
* **MATLAB**
* **Simulink**
