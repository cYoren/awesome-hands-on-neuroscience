# Awesome Hands-on Neuroscience [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> Executable Jupyter notebooks and curated resources to learn neuroscience by doing — from spiking neurons to whole-brain imaging and deep learning on brain data.

This repository contains **15 ready-to-run Jupyter notebooks** covering spiking neural networks, whole-brain imaging, electrophysiology, and deep learning on brain data, alongside a curated list of the best open resources in the field.

**Who is this for?** Students, early-career researchers, and anyone curious about how we study the brain with code. No neuroscience background required for the introductory notebooks — just Python and curiosity.

**How is this different from other Awesome lists?**

- **[Awesome Neuroscience](https://github.com/analyticalmonk/awesome-neuroscience)** — a directory of neuroscience libraries and learning resources across multiple languages. No executable code.
- **[Awesome Computational Neuroscience](https://github.com/eselkin/awesome-computational-neuroscience)** — a directory of researchers and graduate programs worldwide. No tutorials or tools.

This list is a **hands-on collection**: every notebook is a runnable, end-to-end workflow covering a complete analysis — not just a link to an external tool.

---

## Contents

- [Getting Started](#getting-started)
- [Notebooks](#notebooks)
  - [Computational Neuroscience](#computational-neuroscience)
  - [Structural Neuroimaging](#structural-neuroimaging)
  - [Functional Neuroimaging](#functional-neuroimaging)
  - [Diffusion & Tractography](#diffusion--tractography)
  - [Electrophysiology](#electrophysiology)
  - [Deep Learning & AI](#deep-learning--ai)
  - [Data Standards & Workflows](#data-standards--workflows)
- [Curated Resources](#curated-resources)
  - [Learning Platforms & Courses](#learning-platforms--courses)
  - [Textbooks (Free)](#textbooks-free)
  - [Software Tools](#software-tools)
  - [Open Datasets](#open-datasets)
  - [Atlases & Parcellations](#atlases--parcellations)
  - [Community](#community)
  - [Key Papers](#key-papers)
- [Attribution](#attribution)

---

## Getting Started

### Prerequisites

- Python 3.10+
- JupyterLab
- ~2 GB free disk space for sample datasets (downloaded automatically by the notebooks)
- For neuroimaging CLI notebooks (09, 10, 11): FSL, AFNI, or MRtrix3 installed on your system (links in the Software Tools section below)

Notebooks 01, 02, 05, and 14 are beginner-friendly (basic Python/NumPy). Notebooks 03, 04, 06, 08, and 15 are intermediate (linear algebra, signal processing). Notebooks 07, 09, 10, 11, 12, and 13 are advanced (neuroimaging concepts, CLI tools, deep learning).

### Quick Setup

```bash
# Clone the repo
git clone https://github.com/cYoren/awesome-hands-on-neuroscience.git
cd awesome-hands-on-neuroscience

# Option A: pip
python -m venv venv
source venv/bin/activate   # Windows: venv\Scripts\activate
pip install -r requirements.txt

# Option B: conda
conda env create -f environment.yml
conda activate hands-on-neuroscience

# Launch
jupyter lab notebooks/
```

> **Note — system dependencies:** Notebooks 04 (NetPyNE) installs NEURON automatically via pip on Linux/macOS. Notebooks 09 (FSL), 10 (AFNI), and 11 (MRtrix3) require those CLI tools to be pre-installed on your system; see each tool's official installation guide. The `datalad` package (notebook 14) additionally requires `git-annex` from your system package manager (`apt install git-annex` / `brew install git-annex`).

> **Note — deep learning:** Notebooks 12 and 13 require PyTorch and PyTorch Geometric. These are included in `requirements.txt` but are large downloads (~1 GB). If you only need the other notebooks, you can skip them: comment out the `torch` lines in `requirements.txt` before running `pip install`.

### Download Sample Data (Optional)

Notebooks download the data they need automatically. To pre-fetch everything at once:

```bash
bash scripts/setup_data.sh --all
```

---

## Notebooks

Each notebook is self-contained with setup instructions, inline explanations, and references. Click the title to open.

### Computational Neuroscience

- [Spiking Neural Networks](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/01_brian2_spiking_neurons.ipynb) - Simulate LIF networks, E/I balance, STDP plasticity, and Hodgkin-Huxley dynamics using Brian2.
- [Whole-Brain Modeling](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/03_neurolib_wholebrain.ipynb) - Run an 80-region whole-brain model (ALN neural mass), simulate BOLD, and compare to empirical HCP data using Neurolib.
- [Cortical Column Simulation](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/04_netpyne_cortical_column.ipynb) - Build a multi-population cortical microcircuit with Hodgkin-Huxley neurons using NetPyNE and NEURON.

### Structural Neuroimaging

- [Atlas Exploration](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/05_mri_atlas_exploration.ipynb) - Load and visualize MNI152, Schaefer, Yeo, and Destrieux atlases; extract region time series; compute FC matrices using NiBabel and Nilearn.
- [Brain Registration](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/07_ants_registration_pipeline.ipynb) - N4 bias correction, brain extraction, and SyN nonlinear registration to MNI space using ANTsPy.
- [FSL Structural Pipeline](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/09_fsl_structural_pipeline.ipynb) - BET skull stripping, FAST tissue segmentation, and FLIRT/FNIRT registration to MNI using FSL.

### Functional Neuroimaging

- [fMRI Analysis & Visualization](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/02_nilearn_fmri_analysis.ipynb) - Haxby visual decoding, resting-state networks, and ADHD functional connectome using Nilearn.
- [Naturalistic fMRI Connectome](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/08_naturalistic_fmri_connectome.ipynb) - Pixar movie-watching fMRI, Schaefer parcellation, and children vs adults comparison using Nilearn and NiBabel.
- [AFNI Task fMRI GLM](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/10_afni_task_fmri_glm.ipynb) - Motion correction, smoothing, GLM with 3dDeconvolve, and activation t-maps using AFNI.

### Diffusion & Tractography

- [DWI Tractography](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/11_mrtrix3_tractography.ipynb) - Full DWI pipeline: denoise, CSD fiber estimation, iFOD2 probabilistic tractography, and SIFT2 filtering using MRtrix3.

### Electrophysiology

- [MEG/EEG Analysis](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/06_mne_meg_eeg_analysis.ipynb) - Load MEG/EEG, epoch events, compute ERPs, time-frequency decomposition (Morlet), and dSPM source localization using MNE-Python.

### Deep Learning & AI

- [Brain Decoding with Deep Learning](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/12_deep_learning_brain_decoding.ipynb) - Train a CNN to decode visual categories from fMRI and compare to an SVM baseline using PyTorch and Nilearn.
- [Graph Neural Networks on Connectomes](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/13_graph_neural_networks_connectome.ipynb) - Model the brain as a graph and build a Graph Attention Network for subject classification using PyTorch Geometric.

### Data Standards & Workflows

- [BIDS & Data Conversion](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/14_bids_pybids_dcm2niix.ipynb) - Query BIDS datasets programmatically and convert DICOM to NIfTI using PyBIDS and dcm2niix.
- [Brain Annotation Maps](https://github.com/cYoren/awesome-hands-on-neuroscience/blob/main/notebooks/15_neuromaps_brain_annotations.ipynb) - Map brain statistics onto surfaces, compare against receptor and gene expression atlases, and run spin tests using Neuromaps.

---

## Curated Resources

### Learning Platforms & Courses

- [Neuromatch Academy](https://neuromatch.io/) - Free computational neuroscience summer school with hands-on tutorials.
- [Neurohackademy](https://neurohackademy.org/) - Neuroimaging and data science summer institute, with full lecture videos on YouTube.
- [INCF Training Space](https://training.incf.org/) - Curated neuroscience training materials from the International Neuroinformatics Coordinating Facility.
- [MIT 9.40 — Introduction to Neural Computation](https://ocw.mit.edu/courses/9-40-introduction-to-neural-computation-spring-2018/) - Free MIT OpenCourseWare lecture series on neural computation.
- [Coursera: Computational Neuroscience](https://www.coursera.org/learn/computational-neuroscience) - University of Washington course by Adrienne Fairhall and Rajesh Rao.
- [Coursera: Medical Neuroscience](https://www.coursera.org/learn/medical-neuroscience) - Duke University course by Leonard White.
- [AFNI Bootcamp](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/educational/bootcamp_recordings.html) - Free video lectures on fMRI analysis from the NIMH.
- [FSL Course](https://open.win.ox.ac.uk/pages/fslcourse/website/) - Oxford's open neuroimaging analysis course covering FSL tools.
- [Andy's Brain Book](https://andysbrainbook.readthedocs.io/) - Practical walkthrough of FSL, AFNI, SPM, and FreeSurfer for beginners.
- [MNE-Python Tutorials](https://mne.tools/stable/auto_tutorials/index.html) - Official step-by-step tutorial series for MEG and EEG analysis.
- [Nilearn Examples Gallery](https://nilearn.github.io/stable/auto_examples/index.html) - Dozens of worked fMRI analysis examples using Python.

### Textbooks (Free)

- [Neuroimaging Analysis Methods](https://textbook.nipraxis.org/) - Hands-on neuroimaging with Python, from the Nipraxis project.
- [Neuroscience Online](https://nba.uth.tmc.edu/neuroscience/) - UTHealth open-access neuroscience textbook covering all major systems.
- [Neuronal Dynamics](https://neuronaldynamics.epfl.ch/) - Computational and theoretical neuroscience by Gerstner et al. at EPFL.
- [Theoretical Neuroscience](https://mitpress.mit.edu/9780262541855/theoretical-neuroscience/) - Classic graduate-level textbook by Dayan and Abbott (MIT Press; free PDF available from the authors).
- [Spiking Neuron Models](https://lcnwww.epfl.ch/gerstner/SPNM/SPNM.html) - Mathematical treatment of spiking neurons by Gerstner and Kistler.

### Software Tools

#### Neuroimaging Analysis

- [FSL](https://fsl.fmrib.ox.ac.uk/fsl/) - FMRIB Software Library for structural, functional, and diffusion MRI analysis.
- [AFNI](https://afni.nimh.nih.gov/) - Analysis of Functional NeuroImages suite from the NIMH.
- [FreeSurfer](https://surfer.nmr.mgh.harvard.edu/) - Cortical surface reconstruction, parcellation, and morphometry.
- [ANTs](https://github.com/ANTsX/ANTs) - Advanced Normalization Tools for state-of-the-art image registration.
- [MRtrix3](https://www.mrtrix.org/) - Diffusion MRI analysis and probabilistic tractography.
- [SPM](https://www.fil.ion.ucl.ac.uk/spm/) - Statistical Parametric Mapping for neuroimaging in MATLAB.
- [fMRIPrep](https://fmriprep.org/) - Robust and reproducible fMRI preprocessing pipeline.
- [Connectome Workbench](https://www.humanconnectome.org/software/connectome-workbench) - Visualization and analysis tool for HCP surface data.

#### Python Libraries

- [Nilearn](https://nilearn.github.io/) - Machine learning for neuroimaging in Python.
- [MNE-Python](https://mne.tools/) - MEG and EEG data analysis, preprocessing, and source modeling.
- [NiBabel](https://nipy.org/nibabel/) - Read and write common neuroimaging file formats in Python.
- [PyBIDS](https://bids-standard.github.io/pybids/) - Programmatic querying of BIDS-formatted datasets.
- [Neuromaps](https://netneurolab.github.io/neuromaps/) - Brain annotation mapping and spatial null models.
- [Brainspace](https://brainspace.readthedocs.io/) - Gradient analysis of brain connectivity and cortical organization.
- [NetNeuroTools](https://netneurotools.readthedocs.io/) - Utilities for network neuroscience and connectome analysis.
- [NiMARE](https://nimare.readthedocs.io/) - Neuroimaging meta-analysis in Python.

#### Computational Neuroscience Simulators

- [Brian2](https://briansimulator.org/) - Intuitive and efficient spiking neural network simulator in Python.
- [NEURON](https://www.neuron.yale.edu/) - Biophysically detailed compartmental neuron and network modeling.
- [NetPyNE](http://netpyne.org/) - High-level Python interface to NEURON for network modeling.
- [Neurolib](https://github.com/neurolib-dev/neurolib) - Whole-brain neural mass modeling and parameter fitting.
- [NEST](https://www.nest-simulator.org/) - Large-scale spiking neural network simulator for point neurons.
- [The Virtual Brain](https://www.thevirtualbrain.org/) - Web-based whole-brain simulation and personalized brain modeling.

### Open Datasets

- [OpenNeuro](https://openneuro.org/) - Over 1,000 free MRI, MEG, and EEG datasets in BIDS format.
- [Human Connectome Project](https://www.humanconnectome.org/) - High-resolution multimodal brain data from 1,200 healthy adults.
- [UK Biobank](https://www.ukbiobank.ac.uk/) - Population-scale biomedical data with a large brain imaging substudy.
- [ADNI](https://adni.loni.usc.edu/) - Alzheimer's Disease Neuroimaging Initiative longitudinal dataset.
- [ABCD Study](https://abcdstudy.org/) - Longitudinal brain development data from over 10,000 children.
- [Allen Brain Atlas](https://portal.brain-map.org/) - Gene expression, cell type, and connectivity data across the brain.
- [NeuroVault](https://neurovault.org/) - Public repository for sharing statistical brain maps and ROIs.
- [INDI](http://fcon_1000.projects.nitrc.org/) - International Neuroimaging Data-sharing Initiative for resting-state fMRI.
- [PhysioNet](https://physionet.org/) - Physiological and clinical signal datasets including EEG and ECG.
- [CRCNS](https://crcns.org/) - Collaborative Research in Computational Neuroscience data repository.

### Atlases & Parcellations

- [MNI152](https://www.bic.mni.mcgill.ca/ServicesAtlases/ICBM152NLin2009) - The standard stereotaxic MNI brain template used in most neuroimaging studies.
- [Schaefer 2018](https://github.com/ThomasYeoLab/CBIG) - Local-global cortical parcellations from 100 to 1,000 regions.
- [Glasser HCP-MMP1.0](https://balsa.wustl.edu/study/show/RVVG) - 360-region multimodal parcellation from the Human Connectome Project.
- [AAL](https://www.gin.cnrs.fr/en/tools/aal/) - Automated Anatomical Labeling atlas with 116 cortical and subcortical regions.
- [Desikan-Killiany](https://surfer.nmr.mgh.harvard.edu/fswiki/CorticalParcellation) - FreeSurfer's default 68-region cortical parcellation.
- [Destrieux 2009](https://surfer.nmr.mgh.harvard.edu/fswiki/DestrieuxAtlasChanges) - Sulcal-based 148-region cortical atlas included with FreeSurfer.
- [Yeo 2011](https://surfer.nmr.mgh.harvard.edu/fswiki/CorticalParcellation_Yeo2011) - 7 and 17 resting-state network parcellations of the cerebral cortex.
- [MSDL](https://team.inria.fr/parietal/research/spatial_patterns/spatial-patterns-in-resting-state/) - Multi-subject dictionary learning probabilistic atlas for resting-state fMRI.
- [Brodmann Areas](https://en.wikipedia.org/wiki/Brodmann_area) - Classic cytoarchitectonic regions still widely used in cognitive neuroscience.
- [Brainnetome](https://atlas.brainnetome.org/) - Connectivity-based parcellation with 246 cortical and subcortical regions.
- [Melbourne Subcortical Atlas](https://github.com/yetianmed/subcortex) - Fine-grained 5-scale parcellation of subcortical structures.

### Community

- [NeuroStars](https://neurostars.org/) - Q&A forum for neuroimaging, the equivalent of Stack Overflow for brain imaging.
- [OHBM](https://www.humanbrainmapping.org/) - Organization for Human Brain Mapping, home of the field's main annual conference.
- [BrainHack](https://brainhack.org/) - Collaborative hackathons for open neuroscience around the world.
- [INCF](https://www.incf.org/) - International Neuroinformatics Coordinating Facility promoting FAIR neuroscience.
- [ReproNim](https://www.repronim.org/) - Center for Reproducible Neuroimaging Computation and training.
- [Neuromatch Community](https://neuromatch.io/about/) - Computational neuroscience community running open conferences and education.

### Key Papers

These papers shaped the methods used in this repository.

#### Reviews & Foundational

- [A quantitative description of membrane current and its application to conduction and excitation in nerve](https://doi.org/10.1113/jphysiol.1952.sp004764) - Hodgkin & Huxley (1952). The mathematical model of action potential generation. *J. Physiol.*, 117(4), 500–544.
- [Functional and effective connectivity in neuroimaging: A synthesis](https://doi.org/10.1002/hbm.460020107) - Friston (1994). Foundational framework for brain connectivity analysis. *Human Brain Mapping*, 2(1–2), 56–78.
- [What we can do and what we cannot do with fMRI](https://doi.org/10.1038/nature06976) - Logothetis (2008). Critical review of fMRI's scope and limitations. *Nature*, 453, 869–878.
- [The human connectome: a complex network](https://doi.org/10.1111/j.1749-6632.2010.05888.x) - Sporns (2011). Overview of graph-theoretic approaches to brain connectivity. *Ann. N.Y. Acad. Sci.*, 1224(1), 109–125.

#### Methods

- [Advances in functional and structural MR image analysis and implementation as FSL](https://doi.org/10.1016/j.neuroimage.2004.07.051) - Smith et al. (2004). *NeuroImage*, 23(S1), 208–219.
- [A reproducible evaluation of ANTs similarity metric performance in brain image registration](https://doi.org/10.1016/j.neuroimage.2010.09.025) - Avants et al. (2011). *NeuroImage*, 54(3), 2033–2044.
- [MRtrix3: A fast, flexible and open software framework for medical image processing](https://doi.org/10.1016/j.neuroimage.2019.116137) - Tournier et al. (2019). *NeuroImage*, 202, 116137.
- [MEG and EEG data analysis with MNE-Python](https://doi.org/10.3389/fnins.2013.00267) - Gramfort et al. (2013). *Front. Neurosci.*, 7, 267.
- [The brain imaging data structure (BIDS)](https://doi.org/10.1038/sdata.2016.44) - Gorgolewski et al. (2016). *Sci. Data*, 3, 160044.

#### Parcellations & Atlases

- [Local-global parcellation of the human cerebral cortex](https://doi.org/10.1093/cercor/bhx179) - Schaefer et al. (2018). *Cereb. Cortex*, 28(9), 3095–3114.
- [The organization of the human cerebral cortex estimated by intrinsic functional connectivity](https://doi.org/10.1152/jn.00338.2011) - Yeo et al. (2011). *J. Neurophysiol.*, 106(3), 1125–1165.
- [A multi-modal parcellation of human cerebral cortex](https://doi.org/10.1038/nature18933) - Glasser et al. (2016). *Nature*, 536, 171–178.

#### Deep Learning in Neuroscience

- [Distributed and overlapping representations of faces and objects in ventral temporal cortex](https://doi.org/10.1126/science.1063736) - Haxby et al. (2001). Canonical fMRI decoding dataset used in notebook 02 and 12. *Science*, 293(5539), 2425–2430.
- [neuromaps: structural and functional interpretation of brain maps](https://doi.org/10.1038/s41592-022-01625-w) - Markello et al. (2022). *Nat. Methods*, 19, 1472–1479.
- [The graph neural network model](https://doi.org/10.1109/TNN.2008.2005605) - Scarselli et al. (2009). *IEEE Trans. Neural Netw.*, 20(1), 61–80.

---

## Attribution

All datasets, tools, and resources used in this repository are properly cited in [ATTRIBUTION.md](ATTRIBUTION.md). We are grateful to the open-science neuroscience community for making this work possible.

If you use these materials in your research or teaching, please cite the original authors of the tools and datasets (see ATTRIBUTION.md) and link back to this repository.

---

## Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:

- Suggesting new resources.
- Adding tutorial notebooks.
- Fixing errors.
- Improving documentation.
