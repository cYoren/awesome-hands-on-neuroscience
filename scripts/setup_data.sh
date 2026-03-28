#!/usr/bin/env bash
# setup_data.sh - Download sample datasets for the notebooks
#
# Usage: bash scripts/setup_data.sh [--all | --notebook NUM]
# Examples:
#   bash scripts/setup_data.sh --all           # Download everything
#   bash scripts/setup_data.sh --notebook 02   # Download data for notebook 02 only

set -euo pipefail

DATA_DIR="${DATA_DIR:-./data}"
mkdir -p "$DATA_DIR"

echo "============================================"
echo " Awesome Neuroscience - Data Setup"
echo "============================================"
echo ""
echo "Data will be downloaded to: $DATA_DIR"
echo ""

download_nilearn_data() {
    echo "[Nilearn] Downloading sample datasets via Python..."
    python3 -c "
import nilearn.datasets as ds
import os
data_dir = os.environ.get('DATA_DIR', './data')
print('  Fetching Haxby dataset...')
ds.fetch_haxby(data_dir=data_dir, subjects=[1])
print('  Fetching development fMRI...')
ds.fetch_development_fmri(n_subjects=1, data_dir=data_dir)
print('  Fetching MSDL atlas...')
ds.fetch_atlas_msdl(data_dir=data_dir)
print('  Fetching Schaefer atlas...')
ds.fetch_atlas_schaefer_2018(data_dir=data_dir)
print('  Fetching Yeo 2011 atlas...')
ds.fetch_atlas_yeo_2011(data_dir=data_dir)
print('  Fetching Destrieux atlas...')
ds.fetch_atlas_destrieux_2009(data_dir=data_dir)
print('  Fetching Smith 2009 RSN maps...')
ds.fetch_atlas_smith_2009(data_dir=data_dir)
print('  Done!')
"
}

download_mne_data() {
    echo "[MNE] Downloading sample MEG/EEG data..."
    python3 -c "
import mne
print('  Fetching MNE sample data (this may take a while)...')
mne.datasets.sample.data_path()
print('  Done!')
"
}

download_openneuro_data() {
    echo "[OpenNeuro] Installing sample BIDS dataset..."
    if command -v datalad &> /dev/null; then
        mkdir -p "$DATA_DIR/openneuro"
        cd "$DATA_DIR/openneuro"
        if [ ! -d "ds000228" ]; then
            datalad install https://github.com/OpenNeuroDatasets/ds000228
            echo "  Installed ds000228 (metadata only - use 'datalad get' for actual files)"
        else
            echo "  ds000228 already exists, skipping"
        fi
    else
        echo "  WARNING: datalad not installed. Install with: pip install datalad"
        echo "  Skipping OpenNeuro download."
    fi
}

show_help() {
    echo "Usage: bash scripts/setup_data.sh [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  --all              Download all datasets"
    echo "  --notebook NUM     Download data for a specific notebook (e.g., 02)"
    echo "  --nilearn          Download Nilearn datasets only"
    echo "  --mne              Download MNE datasets only"
    echo "  --openneuro        Download OpenNeuro datasets only"
    echo "  --help             Show this help message"
    echo ""
    echo "Environment variables:"
    echo "  DATA_DIR           Directory to store data (default: ./data)"
}

case "${1:---help}" in
    --all)
        download_nilearn_data
        download_mne_data
        download_openneuro_data
        ;;
    --nilearn)
        download_nilearn_data
        ;;
    --mne)
        download_mne_data
        ;;
    --openneuro)
        download_openneuro_data
        ;;
    --notebook)
        NUM="${2:-}"
        case "$NUM" in
            01) echo "Notebook 01 (Brian2) requires no external data downloads." ;;
            02) download_nilearn_data ;;
            03) echo "Notebook 03 (Neurolib) generates synthetic data." ;;
            04) echo "Notebook 04 (NetPyNE) generates synthetic data." ;;
            05) download_nilearn_data ;;
            06) download_mne_data ;;
            07) echo "Notebook 07 (ANTs) uses Nilearn data."; download_nilearn_data ;;
            08) download_nilearn_data ;;
            09) echo "Notebook 09 (FSL) uses Nilearn data."; download_nilearn_data ;;
            10) echo "Notebook 10 (AFNI) - see AFNI bootcamp data instructions in the notebook." ;;
            11) echo "Notebook 11 (MRtrix3) - see data instructions in the notebook." ;;
            12) download_nilearn_data ;;
            13) download_nilearn_data ;;
            14) download_openneuro_data ;;
            15) echo "Notebook 15 (Neuromaps) downloads data automatically." ;;
            *) echo "Unknown notebook number: $NUM"; show_help; exit 1 ;;
        esac
        ;;
    --help|*)
        show_help
        ;;
esac

echo ""
echo "Setup complete!"
