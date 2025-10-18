# Motor Control With Safety Interlock

This directory contains the Simulink model and simulation data for a **Motor Control** system that includes a **Safety Interlock** feature.

---

## System Overview ⚙️

This project simulates the control logic for an electric motor, commonly found in applications like electric power steering, traction motors (in EVs), or window/seat controllers.

A critical aspect of this model is the **safety interlock**. This logic prevents the motor from operating under unsafe conditions, such as:
* When a door is open.
* When the vehicle is not in the correct gear (e.g., "Park" or "Neutral").
* When a fault is detected in the system.

The simulation tests the motor controller's response to both command inputs (e.g., "motor on") and various safety/fault status inputs.

---

## Files in This Directory

* **`MotorControl_With_Safety_Interlock.slx`**: The main Simulink model file containing the control logic.
* **`Scenario6.mat`**: A MATLAB data file that provides the input scenario (e.g., a time-based series of command signals and safety interlock statuses) for the simulation.

---

## How to Use

1.  Open MATLAB.
2.  Load the `Scenario6.mat` file into your MATLAB workspace.
3.  Open the `MotorControl_With_Safety_Interlock.slx` model in Simulink.
4.  Run the simulation.
5.  Observe the motor's output (e.g., speed, on/off state) to verify that the safety interlock logic correctly enables or disables the motor.

### Tools
* **MATLAB**
* **Simulink**
