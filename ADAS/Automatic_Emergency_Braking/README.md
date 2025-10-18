# Automatic Emergency Braking (AEB) System

This directory contains a Simulink model that simulates an Automatic Emergency Braking (AEB) system, a key safety feature in modern Advanced Driver-Assistance Systems (ADAS).

## Overview

The purpose of an AEB system is to prevent or mitigate forward collisions. It uses forward-facing sensors (simulated here with inputs) to monitor the traffic ahead. If the system detects an imminent collision and the driver takes no action, it automatically applies the brakes.

## Files in This Directory

* **`Automatic_Braking_System.slx`**: The main Simulink model. It contains the core AEB control logic, a simple vehicle dynamics model, and the test environment.

## System Logic

The controller's logic is based on calculating the **Time to Collision (TTC)**, which is the time remaining before the ego vehicle collides with the lead vehicle.

1.  **Calculate Relative Speed**: The system first finds the difference between the `EgoVehicleSpeed` and the `LeadVehicleSpeed`.
2.  **Calculate TTC**: It then divides the `LeadVehicleDistance` by the `RelativeSpeed` to get the TTC in seconds.
3.  **Decision Making (Stateflow)**: A Stateflow chart uses the TTC to make decisions in stages:
    * **`Safe` State**: The default state. No braking is applied.
    * **`Warning` State**: If the TTC drops below a warning threshold (e.g., 2.5 seconds), the system issues a warning (simulated by a status change).
    * **`Braking` State**: If the TTC drops to a critical threshold (e.g., 1.2 seconds), the system takes control and applies the maximum `BrakeCommand`.

## How to Use

1.  **Open the Model**: Open `Automatic_Braking_System.slx` in Simulink.
2.  **Set Scenario**: Inside the model, you can set the initial conditions for the simulation using the **Constant** blocks for `EgoVehicleSpeed`, `LeadVehicleDistance`, and `LeadVehicleSpeed`.
3.  **Run Simulation**: Run the simulation to observe the system's behavior.
4.  **View Results**: Open the **Scope** block to visualize the outputs. You will see the vehicle speeds, the closing distance, the calculated TTC, and the activation of the `BrakeCommand` and `AEB_Status` as the collision becomes imminent.

---
Part of the **AUTOSAR-Simulink-Automobile-Simulation** repository.
