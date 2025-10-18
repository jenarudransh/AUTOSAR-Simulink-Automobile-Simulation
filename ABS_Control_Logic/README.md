# ABS (Anti-lock Braking System) Control Logic

This directory contains a Simulink model for simulating an Anti-lock Braking System (ABS) as part of the `AUTOSAR-Simulink-Automobile-Simulation` project.

## Overview

The purpose of an ABS is to prevent the wheels from locking up during hard braking. By modulating the brake pressure, it allows the driver to maintain steering control while braking, which is crucial for avoiding obstacles. This model simulates the control logic required to achieve this.

## Files in This Directory

* **`ABS_Control_Logic_Unit.slx`**: The main Simulink model file containing the control logic for the ABS. This model likely uses wheel speed sensor inputs to detect wheel slip and calculates the appropriate brake pressure modulation.
* **`Scenario1.mat`**: A MATLAB data file that contains a test scenario for the Simulink model. This file likely loads predefined inputs into the MATLAB workspace, such as vehicle speed and driver brake commands, to test the ABS logic under specific conditions (e.g., braking on an icy surface).

## System Logic

The core logic of this ABS model is designed to:
1.  **Monitor Wheel Speed**: Continuously read the rotational speed of each wheel.
2.  **Calculate Wheel Slip**: Compare the wheel speed to the vehicle's actual speed to determine if a wheel is about to lock up (i.e., its slip ratio is too high).
3.  **Modulate Brakes**: If a wheel lock-up is detected, the controller rapidly decreases, holds, and reapplies brake pressure to that specific wheel, keeping it at the optimal point of traction.
4.  **Repeat**: This cycle is repeated many times per second until the vehicle stops or the driver releases the brake.

## How to Use

1.  **Open MATLAB**.
2.  **Load the Scenario**: Double-click the `Scenario1.mat` file or use the `load('Scenario1.mat')` command in the MATLAB command window. This will load the necessary test data and parameters into the workspace.
3.  **Open the Model**: Open the `ABS_Control_Logic_Unit.slx` file in Simulink.
4.  **Run Simulation**: Run the simulation to observe how the ABS controller responds to the test scenario. You can use Scopes within the model to visualize signals like wheel speed, vehicle speed, and brake commands.

---
Part of the **AUTOSAR-Simulink-Automobile-Simulation** repository.
