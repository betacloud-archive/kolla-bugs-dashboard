#!/usr/bin/env bash
set -x

source venv/bin/activate
python bugs_dashboard.py -p kolla
