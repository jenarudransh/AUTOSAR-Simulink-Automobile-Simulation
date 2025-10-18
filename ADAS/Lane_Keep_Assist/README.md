# Lane Keep Assist (LKA) System

This directory contains a Simulink model that simulates a Lane Keep Assist (LKA) system, a core feature of modern Advanced Driver-Assistance Systems (ADAS).

## Overview

The goal of this LKA system is to help a driver stay centered in their lane. It uses a (simulated) forward-facing camera to detect lane markings and automatically applies corrective steering torque when the vehicle begins to drift. The controller includes logic to activate only under specific conditions (e.g., above a certain speed) and to be overridden by the driver.

## Files in This Directory

* **`Lane_Keep_Assist.slx`**: The main Simulink model. It contains the complete test harness, including the LKA controller, a simple vehicle dynamics model, and inputs for simulation.
* **`LKA_Status.m`**: A required MATLAB class definition file. It defines the `LKA_Status` enumeration (`OFF`, `PASSIVE`, `ACTIVE`, `OVERRIDE`) used by the Stateflow chart to output a readable system status.

## System Logic

The model is built around a closed-loop control system with three main parts:

1.  **`LKA_Control_Logic_Unit` (The Controller)**: This subsystem is the brain of the LKA.
    * **Stateflow Chart**: A chart manages the system's state. It decides when to be `OFF`, `PASSIVE` (armed but not intervening), `ACTIVE` (applying steering), or in `OVERRIDE` (driver has taken control).
    * **PID Controller**: A PID block calculates the precise `SteeringCommand` needed to reduce the `LateralDistance` (the error) to zero.
    * **Switch**: This block uses the `ActivatePID` signal from the Stateflow chart to either pass the PID's command to the steering or send a `0` (no torque).

2.  **Vehicle Dynamics**: A simple **Integrator** block (`1/s`) is used to model the vehicle's lateral motion. It integrates the `SteeringCommand` (torque) to produce the vehicle's `LateralDistance` (position).

3.  **Inputs & Feedback Loop**:
    * **Inputs**: **Constant** blocks simulate sensor data like `VehicleSpeed`, `LaneDetected`, and driver inputs like `LKSEnableSwitch`.
    * **Feedback**: The system's output (`LateralDistance`) is fed back to the input, allowing the controller to see and correct the error in real-time.

## How to Use

1.  **Ensure Path**: Make sure the `LKA_Status.m` file is in the same directory as the model or on the MATLAB path.
2.  **Open the Model**: Open `Lane_Keep_Assist.slx` in Simulink.
3.  **Simulate Drift**: To test the system, you can replace the `LateralDistance` input constant (currently `0`) with a **Step** block. For example, a step from `0` to `0.5` at 1 second will simulate a sudden drift, forcing the controller to react.
4.  **Run Simulation**: Run the simulation.
5.  **View Results**: Open the **Scope** block to visualize the outputs. A successful test will show the `LKA_Status` switch to `ACTIVE` and the `SteeringCommand` activate to drive the vehicle's position back to zero.

---
Part of the **AUTOSAR-Simulink-Automobile-Simulation** repository.
