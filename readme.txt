# BigDataX REU 2024 Linux & Tools Assignment

## Overview
This project is designed to enhance the understanding of Linux operating systems, virtual machines, and Bash scripting. The primary focus is on setting up your own virtual environment, executing Linux commands, and writing Bash scripts to automate tasks.

## Table of Contents
1. [Assignment Description](#assignment-description)
2. [Setup and Configuration](#setup-and-configuration)
3. [Using the Scripts](#using-the-scripts)
4. [Project Structure](#project-structure)

## Assignment Description
This assignment consists of multiple parts, including virtual machine setup, Linux command usage, and Bash scripting. The objective is to familiarize yourself with the Linux environment and basic scripting commands to automate tasks.

## Setup and Configuration
### Virtual Machine Setup
1. **Download VirtualBox (if on Windows) or UTM (if on MacOS)**: Visit [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads) or [UTM Downloads](https://mac.getutm.app/) to download the latest version.
2. **Install VirtualBox/UTM**: Follow the installation instructions provided on the website.
3. **Download Ubuntu ISO**: Download the Ubuntu Desktop 20.04.1 LTS ISO from [Ubuntu Official Download Page](https://ubuntu.com/download/desktop).
4. **Create and Configure VM**:
   - Open your VM & create a new virtual machine with the following criteria:
   - Set the machine type to Linux and version to Ubuntu (64-bit).
   - Allocate at least 4GB of RAM and create a virtual disk of 25GB.
   - Set up networking with NAT and ensure your VM has an internet connection.

### Initial System Setup
1. **Install Ubuntu**: Start your VM and select the ISO file you downloaded as the startup disk. Follow the on-screen instructions to install Ubuntu.
2. **Configure Users and Network**:
   - Create a user account and set a strong password.
   - Enable SSH by installing the SSH service and opening the SSH port in the firewall.

### Replicate VM
1. Once the first VM is set up and configured, clone it & create a second VM with the same settings. You then have to SSH from one into the other to make sure it works fine. 

## Using the Scripts
### Script Descriptions
1. **generate-dataset.sh**: This script generates a dataset file with random numeric and ASCII string data. It should take in two arguments, the first being the output file that you want to output to, and the second which is the number of records to be generated.
2. **sort-data.sh**: This script sorts a dataset file based on the first column. It should take one argument, the output file that you want to output to. 
3. **automation.sh**: This script combines the first two commands so that you don't have to manually type it out all of the time. With this script, generating and sorting the records is automated. 
4. **graph.py**: This script creates a matplotlib graph of the times it takes to generate and sort the data from above. 

### Running the Scripts
1. **Generate Dataset**:
   ```bash
   ./generate-dataset.sh output.txt 1000
2. **Sort Data**:
   ```bash
   ./sort-data.sh output.txt
3. **Graph Data**:
   ```bash
   python graph.py
4. **Alternative Easier Method**:
   ```bash
   ./automation.sh 1000 10000 100000
   python graph.py

*Note: It should take approximately over 11 minutes if you use those numbers above.*

### Example Commands
1. **SSH into VM:**
   ```bash
    ssh user@vm-ip-address
3. **Generate Public/Private Keys:**
   ```bash
    ssh-keygen
5. **Securely Copy Files:**
   ```bash
    scp file.txt user@vm-ip-address:/path/

## Project Structure
1. **/pictures:**
    Contains screenshots of each Linux command.
2. **report.pdf:**
    Documentation and analysis of the tasks completed.
