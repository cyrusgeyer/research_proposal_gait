# LaTeX Template Examples

## Adding Figures

To add a figure to your proposal:

1. Place your image file in the repository directory (supported formats: PDF, PNG, JPG)
2. Add the following code in your LaTeX document:

```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.8\textwidth]{your-image.pdf}
    \caption{Description of your figure. This caption will appear below the figure.}
    \label{fig:your-label}
\end{figure}
```

3. Reference the figure in your text:
```latex
As shown in Figure~\ref{fig:your-label}, the system architecture consists of...
```

## Adding Tables

Example of a simple table:

```latex
\begin{table}[h]
    \centering
    \begin{tabular}{|l|c|r|}
        \hline
        \textbf{Parameter} & \textbf{Value} & \textbf{Unit} \\
        \hline
        Walking Speed & 1.2 & m/s \\
        Stride Length & 1.4 & m \\
        Cadence & 110 & steps/min \\
        \hline
    \end{tabular}
    \caption{Typical gait parameters for healthy adults.}
    \label{tab:gait-params}
\end{table}
```

## Adding Equations

For inline equations:
```latex
The stride length can be calculated as $L = v \times t$, where...
```

For display equations:
```latex
\begin{equation}
    v_{avg} = \frac{L_{total}}{t_{total}}
    \label{eq:avg-velocity}
\end{equation}
```

Reference equations:
```latex
According to Equation~\ref{eq:avg-velocity}, the average velocity...
```

## Adding More References

To add a new reference to `references.bib`:

### Journal Article
```bibtex
@article{smith2024gait,
    title={Advanced Methods in Gait Analysis},
    author={Smith, John and Doe, Jane},
    journal={Journal of Biomechanics},
    volume={45},
    number={3},
    pages={123--135},
    year={2024},
    publisher={Elsevier},
    doi={10.1016/j.jbiomech.2024.123456}
}
```

### Book Chapter
```bibtex
@incollection{jones2023motion,
    title={Motion Capture Technologies},
    author={Jones, Alice},
    booktitle={Handbook of Biomechanics},
    pages={45--78},
    year={2023},
    publisher={Springer},
    editor={Brown, Bob}
}
```

### Online Resource
```bibtex
@online{biomech2024,
    title={Biomechanics Database},
    author={{Biomechanics Research Group}},
    year={2024},
    url={https://example.com/biomech},
    note={Accessed: 2024-01-15}
}
```

## Customizing the Template

### Change Font Size
In the `\documentclass` line, change `12pt` to `10pt`, `11pt`, or `12pt`:
```latex
\documentclass[11pt,a4paper]{article}
```

### Change Margins
Modify the geometry package:
```latex
\usepackage[margin=1.5in]{geometry}  % Larger margins
\usepackage[top=1in, bottom=1in, left=1.25in, right=1.25in]{geometry}  % Custom margins
```

### Change Line Spacing
Replace `\onehalfspacing` with:
```latex
\singlespacing     % Single spacing
\doublespacing     % Double spacing
```

### Add Line Numbers (useful for review)
Add to preamble:
```latex
\usepackage{lineno}
\linenumbers
```

### Change Citation Style
Change `\bibliographystyle{apalike}` to:
- `plain` - Basic numeric style
- `alpha` - Alphabetic labels
- `ieeetr` - IEEE style
- `apalike` - APA-like style (current)
- `natbib` with various options

## Advanced Features

### Adding Acronyms
Add to preamble:
```latex
\usepackage[acronym]{glossaries}
\makeglossaries

\newacronym{imu}{IMU}{Inertial Measurement Unit}
\newacronym{grf}{GRF}{Ground Reaction Force}
```

Use in text:
```latex
The \gls{imu} sensors capture... On first use: Inertial Measurement Unit (IMU)
```

### Adding Appendices
After your conclusion and before bibliography:
```latex
\appendix
\section{Supplementary Materials}
Additional data and information...

\section{Equipment Specifications}
Detailed equipment list...
```

### Adding Footnotes
```latex
This is important text.\footnote{This is a footnote with additional information.}
```

### Adding Colored Text (use sparingly)
Add to preamble:
```latex
\usepackage{xcolor}
```

Use in text:
```latex
\textcolor{red}{Important note}
\textcolor{blue}{Reference to something}
```

## Troubleshooting Common Issues

### Long URLs Breaking Layout
Use:
```latex
\usepackage{url}
\url{https://very-long-url.com/path/to/resource}
```

### Floating Figures/Tables Not Where You Want
Try different position specifiers:
- `[h]` - Here (approximately)
- `[t]` - Top of page
- `[b]` - Bottom of page  
- `[p]` - On a separate page
- `[H]` - Exactly here (requires `\usepackage{float}`)

### References Not Appearing
Make sure:
1. You've cited something with `\citep{}` or `\citet{}`
2. The citation key exists in `references.bib`
3. You've run the full compilation sequence
4. BibTeX completed without errors

### Overfull/Underfull Box Warnings
These are usually not critical. To fix:
- Rephrase sentences
- Use `\sloppy` at start of problematic paragraph
- Add `\usepackage{microtype}` to preamble
