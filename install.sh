#!/bin/bash

# Update the system's package index
echo "Updating system package index..."
sudo apt update -y

# Install Python3, venv, and pip
echo "Installing Python3, venv, and pip..."
sudo apt install python3 python3-venv python3-pip -y

# Clone the Flask_App repository
echo "Cloning the Flask_App repository..."
git clone https://github.com/ItsArsalanMD/Flask_App

# Navigate to the GET_Withour_DB folder
echo "Navigating to the GET_Withour_DB folder..."
cd Flask_App/GET_Withour_DB

# Set up a Python virtual environment
echo "Setting up Python virtual environment..."
python3 -m venv env

# Activate the virtual environment
echo "Activating the virtual environment..."
source env/bin/activate

# Install required Python packages
echo "Installing required Python packages..."
pip install -r requirements.txt

# Grant executable permissions to app.py
echo "Granting executable permissions to app.py..."
chmod +x app.py

# Run the Flask application
echo "Running the Flask application..."
flask run --host=0.0.0.0