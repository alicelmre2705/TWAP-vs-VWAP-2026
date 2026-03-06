#!/usr/bin/env bash
set -euo pipefail

mkdir -p data/raw data/clean results/tables results/figures

python3 -m src.download_data
python3 -m src.clean_data
python3 -m src.run_experiment
python3 -m src.make_plots
python3 -m src.run_one_window AAPL

echo "Pipeline complete."
echo "Tables:  results/tables/"
echo "Figures: results/figures/"