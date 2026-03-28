# Awesome Neuroscience

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)

> A curated collection of hands-on tutorials, tools, datasets, and resources for learning computational and cognitive neuroscience.

This repository contains **15 ready-to-run Jupyter notebooks** covering everything from spiking neural networks to deep learning on brain data, plus a curated list of the best open resources in the field.

**Who is this for?** Students, early-career researchers, and anyone curious about how we study the brain with code. No neuroscience background required for the introductory notebooks — just Python and curiosity.

---

## Contents

- [Notebooks](#notebooks)
  - [Computational Neuroscience](#computational-neuroscience)
  - [Structural Neuroimaging](#structural-neuroimaging)
  - [Functional Neuroimaging](#functional-neuroimaging)
  - [Diffusion & Tractography](#diffusion--tractography)
  - [Electrophysiology](#electrophysiology)
  - [Deep Learning & AI](#deep-learning--ai)
  - [Data Standards & Workflows](#data-standards--workflows)
- [Getting Started](#getting-started)
- [Curated Resources](#curated-resources)
  - [Learning Platforms & Courses](#learning-platforms--courses)
  - [Textbooks (Free)](#textbooks-free)
  - [Software Tools](#software-tools)
  - [Open Datasets](#open-datasets)
  - [Atlases & Parcellations](#atlases--parcellations)
  - [Community](#community)
  - [Key Papers](#key-papers)
- [Attribution](#attribution)
- [Contributing](#contributing)
- [License](#license)

---

## Notebooks

Each notebook is self-contained with setup instructions, inline explanations, and references. Click the title to open.

### Computational Neuroscience

| # | Notebook | Description | Key Tools |
|---|----------|-------------|-----------|
| 01 | [Spiking Neural Networks](notebooks/01_brian2_spiking_neurons.ipynb) | Simulate LIF networks, E/I balance, STDP plasticity, and Hodgkin-Huxley dynamics | Brian2 |
| 03 | [Whole-Brain Modeling](notebooks/03_neurolib_wholebrain.ipynb) | Run an 80-region whole-brain model (ALN neural mass), simulate BOLD, compare to empirical HCP data | Neurolib |
| 04 | [Cortical Column Simulation](notebooks/04_netpyne_cortical_column.ipynb) | Build a multi-population cortical microcircuit with Hodgkin-Huxley neurons | NetPyNE, NEURON |

### Structural Neuroimaging

| # | Notebook | Description | Key Tools |
|---|----------|-------------|-----------|
| 05 | [Atlas Exploration](notebooks/05_mri_atlas_exploration.ipynb) | Load and visualize MNI152, Schaefer, Yeo, and Destrieux atlases; extract region time series; compute FC matrices | NiBabel, Nilearn |
| 07 | [Brain Registration](notebooks/07_ants_registration_pipeline.ipynb) | N4 bias correction, brain extraction, SyN nonlinear registration to MNI space | ANTsPy |
| 09 | [FSL Structural Pipeline](notebooks/09_fsl_structural_pipeline.ipynb) | BET skull stripping, FAST tissue segmentation, FLIRT/FNIRT registration to MNI | FSL |

### Functional Neuroimaging

| # | Notebook | Description | Key Tools |
|---|----------|-------------|-----------|
| 02 | [fMRI Analysis & Visualization](notebooks/02_nilearn_fmri_analysis.ipynb) | Haxby visual decoding, resting-state networks, ADHD functional connectome | Nilearn |
| 08 | [Naturalistic fMRI Connectome](notebooks/08_naturalistic_fmri_connectome.ipynb) | Pixar movie-watching fMRI, Schaefer parcellation, children vs adults comparison | Nilearn, NiBabel |
| 10 | [AFNI Task fMRI GLM](notebooks/10_afni_task_fmri_glm.ipynb) | Motion correction, smoothing, GLM with 3dDeconvolve, activation t-maps | AFNI |

### Diffusion & Tractography

| # | Notebook | Description | Key Tools |
|---|----------|-------------|-----------|
| 11 | [DWI Tractography](notebooks/11_mrtrix3_tractography.ipynb) | Full DWI pipeline: denoise, CSD fiber estimation, iFOD2 probabilistic tractography, SIFT2 filtering | MRtrix3 |

### Electrophysiology

| # | Notebook | Description | Key Tools |
|---|----------|-------------|-----------|
| 06 | [MEG/EEG Analysis](notebooks/06_mne_meg_eeg_analysis.ipynb) | Load MEG/EEG, epoch events, compute ERPs, time-frequency (Morlet), dSPM source localization | MNE-Python |

### Deep Learning & AI

| # | Notebook | Description | Key Tools |
|---|----------|-------------|-----------|
| 12 | [Brain Decoding with Deep Learning](notebooks/12_deep_learning_brain_decoding.ipynb) | Train a CNN to decode visual categories from fMRI; compare to SVM baseline | PyTorch, Nilearn |
| 13 | [Graph Neural Networks on Connectomes](notebooks/13_graph_neural_networks_connectome.ipynb) | Model the brain as a graph, build a GAT for subject classification | PyTorch Geometric |

### Data Standards & Workflows

| # | Notebook | Description | Key Tools |
|---|----------|-------------|-----------|
| 14 | [BIDS & Data Conversion](notebooks/14_bids_pybids_dcm2niix.ipynb) | Query BIDS datasets with PyBIDS, convert DICOM to NIfTI with dcm2niix | PyBIDS, dcm2niix |
| 15 | [Brain Annotation Maps](notebooks/15_neuromaps_brain_annotations.ipynb) | Map brain statistics onto surfaces, compare against receptor/gene atlases, spin tests | Neuromaps |

---

## Getting Started

### Prerequisites

- Python 3.10+
- [JupyterLab](https://jupyter.org/)
- ~2 GB free disk space for sample datasets (downloaded automatically)
- For neuroimaging CLI notebooks (09, 10, 11): [FSL](https://fsl.fmrib.ox.ac.uk/fsl/), [AFNI](https://afni.nimh.nih.gov/), or [MRtrix3](https://www.mrtrix.org/) installed

### Quick Setup

```bash
# Clone the repo
git clone https://github.com/YOUR_USERNAME/awesome-neuroscience.git
cd awesome-neuroscience

# Option A: pip
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Option B: conda
conda env create -f environment.yml
conda activate awesome-neuroscience

# Download sample data (optional — notebooks download what they need)
bash scripts/setup_data.sh --all

# Launch
jupyter lab notebooks/
```

### Notebook Difficulty Guide

| Level | Notebooks | Prerequisites |
|-------|-----------|---------------|
| Beginner | 01, 02, 05, 14 | Basic Python, NumPy |
| Intermediate | 03, 04, 06, 08, 15 | Linear algebra, signal processing basics |
| Advanced | 07, 09, 10, 11, 12, 13 | Neuroimaging concepts, CLI tools, deep learning |

---

## Curated Resources

### Learning Platforms & Courses

- [Neuromatch Academy](https://neuromatch.io/) - Free computational neuroscience summer school with hands-on tutorials
- [Neurohackademy](https://neurohackademy.org/) - Neuroimaging and data science summer institute (videos on YouTube)
- [INCF Training Space](https://training.incf.org/) - Curated neuroscience training materials
- [MIT 9.40 — Introduction to Neural Computation](https://ocw.mit.edu/courses/9-40-introduction-to-neural-computation-spring-2018/) - Free MIT OCW course
- [Coursera: Computational Neuroscience](https://www.coursera.org/learn/computational-neuroscience) - University of Washington (Adrienne Fairhall & Rajesh Rao)
- [Coursera: Medical Neuroscience](https://www.coursera.org/learn/medical-neuroscience) - Duke University (Leonard White)
- [AFNI Bootcamp](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/educational/bootcamp_recordings.html) - Free fMRI analysis video lectures
- [FSL Course](https://open.win.ox.ac.uk/pages/fslcourse/website/) - Oxford's neuroimaging analysis course
- [Andy's Brain Book](https://andysbrainbook.readthedocs.io/) - Excellent walkthrough of FSL, AFNI, SPM, FreeSurfer
- [MNE-Python Tutorials](https://mne.tools/stable/auto_tutorials/index.html) - Official MEG/EEG tutorial series
- [Nilearn Examples Gallery](https://nilearn.github.io/stable/auto_examples/index.html) - Dozens of fMRI analysis examples

### Textbooks (Free)

- [Neuroimaging Analysis Methods](https://textbook.nipraxis.org/) - Nipraxis: hands-on neuroimaging with Python
- [Neuroscience Online](https://nba.uth.tmc.edu/neuroscience/) - UTHealth open-access neuroscience textbook
- [Computational and Theoretical Neuroscience](https://neuronaldynamics.epfl.ch/) - Neuronal Dynamics (EPFL, Gerstner et al.)
- [Theoretical Neuroscience](http://www.gatsby.ucl.ac.uk/~lmate/biblio/dayan_abbott.pdf) - Dayan & Abbott (classic)
- [Spiking Neuron Models](https://lcnwww.epfl.ch/gerstner/SPNM/SPNM.html) - Gerstner & Kistler
- [Principles of Neural Design](https://mitpress.mit.edu/books/principles-neural-design) - Sterling & Laughlin

### Software Tools

#### Neuroimaging Analysis

- [FSL](https://fsl.fmrib.ox.ac.uk/fsl/) - FMRIB Software Library for structural, functional, and diffusion analysis
- [AFNI](https://afni.nimh.nih.gov/) - Analysis of Functional NeuroImages (NIMH)
- [FreeSurfer](https://surfer.nmr.mgh.harvard.edu/) - Cortical surface reconstruction and analysis
- [ANTs](https://github.com/ANTsX/ANTs) - Advanced Normalization Tools for image registration
- [MRtrix3](https://www.mrtrix.org/) - Diffusion MRI analysis and tractography
- [SPM](https://www.fil.ion.ucl.ac.uk/spm/) - Statistical Parametric Mapping (MATLAB)
- [fMRIPrep](https://fmriprep.org/) - Robust fMRI preprocessing pipeline
- [Connectome Workbench](https://www.humanconnectome.org/software/connectome-workbench) - HCP surface visualization

#### Python Libraries

- [Nilearn](https://nilearn.github.io/) - Machine learning for neuroimaging
- [MNE-Python](https://mne.tools/) - MEG and EEG data analysis
- [NiBabel](https://nipy.org/nibabel/) - Read/write neuroimaging file formats
- [PyBIDS](https://bids-standard.github.io/pybids/) - Query BIDS datasets
- [Neuromaps](https://netneurolab.github.io/neuromaps/) - Brain annotation and spatial analysis
- [Brainspace](https://brainspace.readthedocs.io/) - Gradient analysis of brain connectivity
- [NetNeuroTools](https://netneurotools.readthedocs.io/) - Network neuroscience utilities
- [NiMARE](https://nimare.readthedocs.io/) - Neuroimaging meta-analysis

#### Computational Neuroscience Simulators

- [Brian2](https://briansimulator.org/) - Spiking neural network simulator (Python)
- [NEURON](https://www.neuron.yale.edu/) - Biophysically detailed neuron modeling
- [NetPyNE](http://netpyne.org/) - Network modeling with NEURON (Python interface)
- [Neurolib](https://github.com/neurolib-dev/neurolib) - Whole-brain neural mass modeling
- [NEST](https://www.nest-simulator.org/) - Large-scale spiking network simulator
- [The Virtual Brain](https://www.thevirtualbrain.org/) - Whole-brain simulation platform

### Open Datasets

- [OpenNeuro](https://openneuro.org/) - 1000+ free MRI/MEG/EEG datasets in BIDS format
- [Human Connectome Project](https://www.humanconnectome.org/) - 1200 subjects, multimodal imaging
- [UK Biobank](https://www.ukbiobank.ac.uk/) - 500,000 subjects with brain imaging subset
- [ADNI](https://adni.loni.usc.edu/) - Alzheimer's Disease Neuroimaging Initiative
- [ABCD Study](https://abcdstudy.org/) - Adolescent brain development (10,000+ subjects)
- [Allen Brain Atlas](https://portal.brain-map.org/) - Gene expression, cell types, connectivity
- [NeuroVault](https://neurovault.org/) - Repository of statistical brain maps
- [INDI](http://fcon_1000.projects.nitrc.org/) - International Neuroimaging Data-sharing Initiative
- [PhysioNet](https://physionet.org/) - Physiological and clinical datasets (includes EEG)
- [CRCNS](https://crcns.org/) - Collaborative Research in Computational Neuroscience data

### Atlases & Parcellations

- [MNI152](https://www.bic.mni.mcgill.ca/ServicesAtlases/ICBM152NLin2009) - Standard stereotaxic brain template
- [Schaefer 2018](https://github.com/ThomasYeoLab/CBIG) - Local-global cortical parcellations (100-1000 regions)
- [Glasser HCP-MMP1.0](https://balsa.wustl.edu/study/show/RVVG) - 360-region multimodal parcellation
- [AAL](https://www.gin.cnrs.fr/en/tools/aal/) - Automated Anatomical Labeling
- [Desikan-Killiany](https://surfer.nmr.mgh.harvard.edu/fswiki/CorticalParcellation) - FreeSurfer's default atlas
- [Destrieux 2009](https://surfer.nmr.mgh.harvard.edu/fswiki/DestrieuxAtlasChanges) - Sulcal-based cortical atlas
- [Yeo 2011](https://surfer.nmr.mgh.harvard.edu/fswiki/CorticalParcellation_Yeo2011) - 7 and 17 resting-state networks
- [MSDL](https://team.inria.fr/parietal/18-2/spatial_patterns/spatial-patterns-in-resting-state/) - Multi-subject dictionary learning atlas
- [Brodmann Areas](https://en.wikipedia.org/wiki/Brodmann_area) - Classic cytoarchitectonic regions
- [Brainnetome](https://atlas.brainnetome.org/) - Connectivity-based parcellation (246 regions)
- [Melbourne Subcortical Atlas](https://github.com/yetianmed/subcortex) - Fine-grained subcortical parcellation

### Community

- [NeuroStars](https://neurostars.org/) - Q&A forum for neuroimaging (think StackOverflow for brain imaging)
- [OHBM](https://www.humanbrainmapping.org/) - Organization for Human Brain Mapping (main conference)
- [BrainHack](https://brainhack.org/) - Collaborative hackathons for neuroscience
- [INCF](https://www.incf.org/) - International Neuroinformatics Coordinating Facility
- [ReproNim](https://www.repronim.org/) - Center for Reproducible Neuroimaging Computation
- [Neuromatch](https://neuromatch.io/) - Computational neuroscience community and conference

### Key Papers

These papers shaped the methods used in this repository:

#### Reviews & Foundational

- Hodgkin, A.L. & Huxley, A.F. (1952). A quantitative description of membrane current and its application to conduction and excitation in nerve. *J. Physiol.*, 117(4), 500-544.
- Friston, K.J. (1994). Functional and effective connectivity in neuroimaging: A synthesis. *Human Brain Mapping*, 2(1-2), 56-78.
- Logothetis, N.K. (2008). What we can do and what we cannot do with fMRI. *Nature*, 453, 869-878.
- Sporns, O. (2011). The human connectome: a complex network. *Annals of the New York Academy of Sciences*, 1224(1), 109-125.

#### Methods

- Smith, S.M. et al. (2004). Advances in functional and structural MR image analysis and implementation as FSL. *NeuroImage*, 23(S1), 208-219.
- Avants, B.B. et al. (2011). A reproducible evaluation of ANTs similarity metric performance in brain image registration. *NeuroImage*, 54(3), 2033-2044.
- Tournier, J.-D. et al. (2019). MRtrix3: A fast, flexible and open software framework for medical image processing. *NeuroImage*, 202, 116137.
- Gramfort, A. et al. (2013). MEG and EEG data analysis with MNE-Python. *Frontiers in Neuroscience*, 7, 267.
- Gorgolewski, K.J. et al. (2016). The brain imaging data structure (BIDS). *Scientific Data*, 3, 160044.

#### Parcellations & Atlases

- Schaefer, A. et al. (2018). Local-global parcellation of the human cerebral cortex. *Cerebral Cortex*, 28(9), 3095-3114.
- Yeo, B.T. et al. (2011). The organization of the human cerebral cortex estimated by intrinsic functional connectivity. *J. Neurophysiol.*, 106(3), 1125-1165.
- Glasser, M.F. et al. (2016). A multi-modal parcellation of human cerebral cortex. *Nature*, 536, 171-178.

#### Deep Learning in Neuroscience

- Haxby, J.V. et al. (2001). Distributed and overlapping representations of faces and objects in ventral temporal cortex. *Science*, 293(5539), 2425-2430.
- Markello, R.D. et al. (2022). neuromaps: structural and functional interpretation of brain maps. *Nature Methods*, 19, 1472-1479.
- Scarselli, F. et al. (2009). The graph neural network model. *IEEE Trans. Neural Networks*, 20(1), 61-80.

---

## Attribution

All datasets, tools, and resources used in this repository are properly cited in [ATTRIBUTION.md](ATTRIBUTION.md). We are grateful to the open-science neuroscience community for making this work possible.

If you use these materials in your research or teaching, please cite the original authors of the tools and datasets (see ATTRIBUTION.md) and link back to this repository.

---

## Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:

- Suggesting new resources
- Adding tutorial notebooks
- Fixing errors
- Improving documentation

---

## License

This work is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). You are free to share and adapt with attribution.

Individual datasets and tools referenced here are subject to their own licenses — see [ATTRIBUTION.md](ATTRIBUTION.md) for details.
