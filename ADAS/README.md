
ADAS (Advanced Driver-Assistance Systems)
This directory contains a collection of Simulink models and AUTOSAR projects for various Advanced Driver-Assistance Systems (ADAS). These models are designed for simulation to test and validate the control logic of common automotive safety and convenience features.

The projects are built using MATLAB and Simulink, likely following AUTOSAR-compliant design principles for automotive software.

Features Included 🚗
Each sub-directory contains the simulation model for a specific ADAS feature:

Adaptive_Cruise_Control: Simulates an advanced cruise control system that automatically adjusts the vehicle's speed to maintain a safe distance from the vehicle in front.

Automatic_Emergency_Braking: Contains the logic for an AEB system, which detects potential frontal collisions and automatically applies the brakes to mitigate or prevent an impact.

Blind_Spot_Monitoring: Models a system that detects vehicles in the driver's blind spot and provides a visual or audible warning.

Lane_Keep_Assist: Includes the control logic for an LKA system that helps steer the vehicle to keep it centered within its detected lane.

Parking_Assist: A simulation model for a system that aids the driver in parking maneuvers, often by automating steering inputs.

Project Goals
The primary goal of this collection is to:

Demonstrate the implementation of ADAS control logic in Simulink.

Provide a simulation environment for testing and validating these features.

Explore the integration of these models within an AUTOSAR (AUTomotive Open System ARchitecture) framework.

How to Use
Navigate to the directory of the feature you want to explore (e.g., Adaptive_Cruise_Control).

Open the primary Simulink model file (e.g., a .slx file) in MATLAB/Simulink.

Run the simulation to observe the system's behavior.

Tools
MATLAB

Simulink

AUTOSAR Blockset (likely required)
