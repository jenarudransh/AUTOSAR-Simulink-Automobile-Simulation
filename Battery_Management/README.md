# Battery Management System (BMS)

This directory contains the Simulink model and simulation data for a **Battery Management System (BMS)**, a critical component in electric vehicles (EVs) and other systems using rechargeable battery packs.

---

## System Overview 🔋

This project simulates the control logic for a BMS. The primary goals of a BMS are to ensure the safety, performance, and longevity of the battery pack.

The logic in this model likely includes algorithms for:
* **State of Charge (SOC) Estimation**: Calculating the remaining charge in the battery.
* **Cell Monitoring**: Monitoring the voltage and temperature of individual cells.
* **Cell Balancing**: Equalizing the charge among cells to maximize pack capacity and life.
* **Safety Management**: Preventing over-charge, over-discharge, and over-temperature conditions.

---

## Files in This Directory

* **`Battery_Management_System.slx`**: The main Simulink model file containing the BMS control logic.
* **`Scenario2.mat`**: A MATLAB data file that provides the input scenario (e.g., charge/discharge cycles, temperature data) for the simulation.

---

## How to Use

1.  Open MATLAB.
2.  Load the `Scenario2.mat` file into your MATLAB workspace.
3.  Open the `Battery_Management_System.slx` model in Simulink.
4.  Run the simulation.
5.  Observe the outputs (e.g., SOC, cell voltages, safety flags) to verify the BMS logic.

### Tools
* **MATLAB**
* **Simulink**
* **Simscape Battery** (possibly required)
