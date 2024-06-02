# README - BigDataX REU 2024 Linux & Tools Assignment

## Overview
This project is designed to enhance the understanding of Linux operating systems, virtual machines, and Bash scripting. The primary focus is on setting up your own virtual environment, executing Linux commands, and writing Bash scripts to automate tasks.

## Table of Contents
1. [Assignment Description](#assignment-description)
2. [Setup and Configuration](#setup-and-configuration)
3. [Using the Scripts](#using-the-scripts)
4. [Project Structure](#project-structure)
5. [Frequently Asked Questions](#frequently-asked-questions)

## Assignment Description
This assignment consists of multiple parts, including virtual machine setup, Linux command usage, and Bash scripting. The objective is to familiarize yourself with the Linux environment and basic scripting commands to automate tasks.

## Setup and Configuration
### Virtual Machine Setup
1. **Download VirtualBox (if on Windows)**: Visit [Oracle VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads) to download the latest version.
1. **Download UTM (if on MacOS)**: Visit [UTM Downloads](https://mac.getutm.app/) to download the latest version.
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
1. Once the first VM is set up and configured, clone it & create a second VM with the same settings.

## Using the Scripts
### Script Descriptions
1. **generate-dataset.sh**: This script generates a dataset file with random numeric and ASCII string data.
2. **sort-data.sh**: Sorts a dataset file based on the first column.

### Running the Scripts
1. **Generate Dataset**:
   ```bash
   ./generate-dataset.sh output.txt 1000
   ./sort-data.sh output.txt

### Example Commands
1. **SSH into VM:**
    -ssh user@vm-ip-address
2. **Generate Public/Private Keys:**
    -ssh-keygen
3. **Securely Copy Files:**
    -scp file.txt user@vm-ip-address:/path/

## Project Structure
1. **/vm-setup:**
    -Contains screenshots and logs from the VM setup process.
2. **/scripts:**
    -Bash scripts for generating and sorting data.
3. **/reports:**
    -Documentation and analysis of the tasks completed.