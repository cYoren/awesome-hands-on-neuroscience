# Contributing to Awesome Neuroscience

Thank you for your interest in contributing! This project aims to be a comprehensive, curated educational resource for students and researchers learning neuroscience through hands-on computation.

## How to Contribute

### Suggesting Resources

The easiest way to contribute is to suggest new resources:

1. Open an [Issue](../../issues/new) with the title: `[Resource] Name of Resource`
2. Include:
   - A link to the resource
   - A brief description of what it covers
   - Why it's useful for learners
   - The appropriate section in the README

### Adding a Notebook

We welcome new tutorial notebooks! Please follow these guidelines:

1. **Fork** this repository
2. **Create a branch**: `git checkout -b add-notebook-topic-name`
3. **Write your notebook** following our conventions (see below)
4. **Submit a Pull Request** with a clear description

#### Notebook Conventions

- **Naming**: `XX_toolname_topic.ipynb` (e.g., `16_scipy_signal_processing.ipynb`)
- **Structure**: Every notebook must include:
  - A title cell with `# Topic Title`
  - A "Prerequisites" section listing required knowledge
  - A "Setup" section with `pip install` commands and data downloads
  - Clear markdown explanations between code cells
  - A "References" section at the end with citations
  - A "License" section noting the notebook's license
- **Data**: Never commit large data files. Include download cells using:
  - `nilearn.datasets.fetch_*()` for neuroimaging data
  - `mne.datasets.*` for MEG/EEG data
  - `datalad install` for OpenNeuro datasets
  - Direct URLs with `urllib` or `requests` for other sources
- **Paths**: Use relative paths or `os.path.expanduser("~")` - never hardcode absolute paths
- **Dependencies**: List all required packages in the setup cell
- **Output**: Clear all cell outputs before committing (`Cell > All Output > Clear`)

### Fixing Errors

Found a bug or error in a notebook?

1. Open an [Issue](../../issues/new) describing the problem
2. Or submit a PR with the fix

### Improving Documentation

Help us improve the README, attributions, or setup guides:

1. Fork and edit
2. Submit a PR with a clear description of what you improved

## Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Give proper credit and attribution
- Follow academic integrity standards
- Welcome learners of all levels

## Attribution Requirements

When adding content that uses external datasets, tools, or references:

1. Add proper citations to the notebook's References section
2. Update `ATTRIBUTION.md` with the source, license, and citation
3. Ensure the data source's license permits redistribution/educational use

## Questions?

Open an issue with the `[Question]` tag and we'll be happy to help!
