# Research Proposal: Holistic Gait Measurement

A comprehensive LaTeX template for a research proposal on holistic gait measurement systems.

## Overview

This repository contains a professional LaTeX template for writing a research proposal focused on gait analysis and measurement. The template includes:

- A well-structured main document (`proposal.tex`)
- BibTeX bibliography with relevant gait research references (`references.bib`)
- Automated compilation using Makefile
- Proper formatting and sectioning for academic proposals

## Features

- **Professional Layout**: 12pt font, double-spaced, with proper margins
- **Complete Structure**: Includes all standard sections (Introduction, Literature Review, Methodology, etc.)
- **Bibliography Support**: Pre-configured BibTeX with citation style
- **Easy Compilation**: Makefile for streamlined PDF generation
- **Clean Git Integration**: `.gitignore` configured for LaTeX build artifacts

## Prerequisites

You need a LaTeX distribution installed on your system:

- **Linux**: TeX Live (`sudo apt-get install texlive-full`)
- **macOS**: MacTeX ([https://www.tug.org/mactex/](https://www.tug.org/mactex/))
- **Windows**: MiKTeX ([https://miktex.org/](https://miktex.org/))

## Usage

### Compilation

#### Using Make (Recommended)

```bash
# Compile the full document with bibliography
make

# Quick compile without updating bibliography
make quick

# View the generated PDF
make view

# Clean auxiliary files
make clean

# Remove all generated files including PDF
make cleanall

# Show help
make help
```

#### Manual Compilation

```bash
# Full compilation with bibliography
pdflatex proposal.tex
bibtex proposal
pdflatex proposal.tex
pdflatex proposal.tex
```

### Customization

1. **Edit the Main Document**: Open `proposal.tex` and customize:
   - Title and author information
   - Abstract
   - All sections with your specific research content

2. **Add References**: Edit `references.bib` to add or modify bibliography entries

3. **Adjust Formatting**: Modify packages and settings in the preamble of `proposal.tex`

## Document Structure

```
proposal.tex          # Main LaTeX document
├── Title & Abstract
├── Table of Contents
├── Introduction
├── Research Objectives
├── Literature Review
├── Methodology
├── Expected Outcomes
├── Timeline
├── Budget
├── Ethical Considerations
├── Significance and Impact
└── Conclusion

references.bib        # BibTeX bibliography file
Makefile             # Build automation
.gitignore           # Git ignore rules for LaTeX
```

## Adding Citations

To cite a reference in your document:

```latex
% Single citation
\citep{baker2013gait}

% Multiple citations
\citep{baker2013gait, whittle2014gait}

% In-text citation
\citet{baker2013gait} showed that...
```

To add a new reference to `references.bib`:

```bibtex
@article{yourkey2024,
  title={Your Article Title},
  author={Author Name},
  journal={Journal Name},
  volume={1},
  number={1},
  pages={1--10},
  year={2024},
  publisher={Publisher}
}
```

## Tips

- Run `make` after adding new references to update the bibliography
- Use `make quick` for faster compilation during writing/editing
- Keep your bibliography file organized and properly formatted
- Always run the full compilation before final submission to ensure all references are properly linked

## License

This template is provided as-is for academic and research purposes.

## Contributing

Feel free to submit issues or pull requests to improve this template.
