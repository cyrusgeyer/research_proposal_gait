# Quick Start Guide

## Getting Started with the LaTeX Research Proposal Template

This template provides a professional structure for writing a research proposal on holistic gait measurement.

### Step 1: Install LaTeX

If you don't have LaTeX installed:

- **Ubuntu/Debian**: `sudo apt-get install texlive-full`
- **macOS**: Download MacTeX from https://www.tug.org/mactex/
- **Windows**: Download MiKTeX from https://miktex.org/

### Step 2: Customize the Template

1. Open `proposal.tex` in your favorite text editor
2. Update the title, author, and affiliation information
3. Modify the abstract to reflect your research
4. Edit each section with your specific content

### Step 3: Add Your References

1. Open `references.bib`
2. Add new BibTeX entries for your sources
3. Use the citation keys in your document with `\citep{key}` or `\citet{key}`

### Step 4: Compile

Run the following command in the repository directory:

```bash
make
```

Or manually:

```bash
pdflatex proposal.tex
bibtex proposal
pdflatex proposal.tex
pdflatex proposal.tex
```

### Step 5: Review

Open `proposal.pdf` to review your compiled document.

## Common LaTeX Commands

### Sections
```latex
\section{Section Title}
\subsection{Subsection Title}
\subsubsection{Subsubsection Title}
```

### Lists
```latex
% Bulleted list
\begin{itemize}
    \item First item
    \item Second item
\end{itemize}

% Numbered list
\begin{enumerate}
    \item First item
    \item Second item
\end{enumerate}
```

### Citations
```latex
\citep{key}           % (Author, Year)
\citet{key}           % Author (Year)
\citep{key1,key2}     % Multiple citations
```

### Figures
```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.8\textwidth]{filename.pdf}
    \caption{Figure caption}
    \label{fig:label}
\end{figure}
```

### Tables
```latex
\begin{table}[h]
    \centering
    \begin{tabular}{|l|c|r|}
        \hline
        Left & Center & Right \\
        \hline
        Data & Data & Data \\
        \hline
    \end{tabular}
    \caption{Table caption}
    \label{tab:label}
\end{table}
```

### Mathematical Equations
```latex
% Inline math
$E = mc^2$

% Display equation
\begin{equation}
    E = mc^2
    \label{eq:einstein}
\end{equation}
```

### Cross-References
```latex
See Section~\ref{sec:intro}
See Figure~\ref{fig:example}
See Table~\ref{tab:results}
See Equation~\ref{eq:einstein}
```

## BibTeX Entry Types

### Article
```bibtex
@article{key,
    title={Article Title},
    author={Author Name},
    journal={Journal Name},
    volume={1},
    number={1},
    pages={1--10},
    year={2024},
    publisher={Publisher}
}
```

### Book
```bibtex
@book{key,
    title={Book Title},
    author={Author Name},
    year={2024},
    publisher={Publisher},
    address={City}
}
```

### Conference Paper
```bibtex
@inproceedings{key,
    title={Paper Title},
    author={Author Name},
    booktitle={Conference Name},
    pages={1--10},
    year={2024},
    organization={Organization}
}
```

## Troubleshooting

### Problem: Bibliography not showing
**Solution**: Run the full compilation sequence:
```bash
make clean
make
```

### Problem: Citations showing as [?]
**Solution**: Ensure you've run BibTeX and compiled twice after:
```bash
pdflatex proposal.tex
bibtex proposal
pdflatex proposal.tex
pdflatex proposal.tex
```

### Problem: Missing packages error
**Solution**: Install the full LaTeX distribution (`texlive-full`)

### Problem: PDF not updating
**Solution**: Clean auxiliary files and recompile:
```bash
make cleanall
make
```

## Tips for Writing

1. **Write incrementally**: Use `make quick` for fast recompilation while editing
2. **Version control**: Commit your changes regularly with git
3. **Organize references**: Keep your BibTeX file well-organized and properly formatted
4. **Use labels**: Add `\label{}` to sections, figures, and tables for easy cross-referencing
5. **Check formatting**: Review the PDF after each major change
6. **Backup your work**: Keep copies of your work in multiple locations

## Need Help?

- LaTeX Documentation: https://www.latex-project.org/help/documentation/
- BibTeX Guide: https://www.bibtex.org/
- Overleaf Tutorials: https://www.overleaf.com/learn
- TeX StackExchange: https://tex.stackexchange.com/
