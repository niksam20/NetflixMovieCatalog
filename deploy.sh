#!/bin/bash

cd ~/app
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app.py
