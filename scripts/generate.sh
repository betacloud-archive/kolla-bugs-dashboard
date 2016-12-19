#!/usr/bin/env bash
set -x

source venv/bin/activate
python kolla_bugs_dashboard.py kolla kolla-ansible kolla-kubernetes
