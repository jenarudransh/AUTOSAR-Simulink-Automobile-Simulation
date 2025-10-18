# Blind Spot Monitoring (BSM) System

This directory contains a Simulink model that simulates a Blind Spot Monitoring (BSM) system, an active safety feature found in modern Advanced Driver-Assistance Systems (ADAS).

## Overview

The purpose of a BSM system is to enhance driver awareness by monitoring the areas to the rear and side of the vehicle (the "blind spots"). The system detects the presence of other vehicles in these zones and provides a warning to the driver, typically a visual icon on the side mirror, to discourage a lane change.

## Files in This Directory

* **`Blind_Spot_Monitoring.slx`**: The main Simulink model. It contains the core logic for the BSM controller and the test environment.
* **`ScenarioBSM.mat`**: A MATLAB data file containing a test scenario. This file loads predefined inputs into the workspace, such as the `LeftReDistance` and `RightReDistance`, to simulate vehicles entering and leaving the blind spots over time.

## System Logic

The control logic for this BSM model is straightforward and threshold-based:

1.  **Sense**: The model receives simulated sensor data for the left and right blind spot zones (`LeftReDistance`, `RightReDistance`).
2.  **Decide**: The logic continuously compares these distances to a predefined safety threshold (e.g., 5 meters).
3.  **Act**:
    * If a vehicle's distance is greater than the threshold, the zone is considered "Safe," and the warning output is `0`.
    * If a vehicle's distance drops below the threshold, the zone is "Unsafe," and the corresponding warning output (`LeftWarning` or `RightWarning`) is set to `1`.

This model also typically includes a second-stage warning logic (not fully shown) that would trigger an *audible* alert if the driver uses their turn signal while a vehicle is detected.

## How to Use

1.  **Open MATLAB**.
2.  **Load the Scenario**: Double-click the `ScenarioBSM.mat` file or use the `load('ScenarioBSM.mat')` command to load the test data into the workspace.
3.  **Open the Model**: Open `Blind_Spot_Monitoring.slx` in Simulink.
4.  **Run Simulation**: Run the simulation to observe the system's behavior.
5.  **View Results**: Open the **Scope** block to visualize the outputs. You will see the distances in the top plots and the corresponding binary warnings (`0` or `1`) activating in the bottom plots as the distances cross the safety threshold.

---
Part of the **AUTOSAR-Simulink-Automobile-Simulation** repository.
