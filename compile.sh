#!/bin/bash
# Compile LaTeX Research Proposal
# This script compiles the proposal.tex file with full bibliography support

set -e  # Exit on error

echo "=== Compiling Research Proposal ==="
echo ""

# Check if pdflatex is installed
if ! command -v pdflatex &> /dev/null; then
    echo "Error: pdflatex is not installed."
    echo "Please install LaTeX:"
    echo "  - Ubuntu/Debian: sudo apt-get install texlive-full"
    echo "  - macOS: Download MacTeX from https://www.tug.org/mactex/"
    echo "  - Windows: Download MiKTeX from https://miktex.org/"
    exit 1
fi

# Check if bibtex is installed
if ! command -v bibtex &> /dev/null; then
    echo "Error: bibtex is not installed."
    echo "Please install the full LaTeX distribution."
    exit 1
fi

# Check if main file exists
if [ ! -f "proposal.tex" ]; then
    echo "Error: proposal.tex not found!"
    echo "Please run this script from the repository root directory."
    exit 1
fi

echo "Step 1/4: Running pdflatex (first pass)..."
pdflatex proposal.tex > /dev/null

echo "Step 2/4: Running bibtex..."
bibtex proposal > /dev/null

echo "Step 3/4: Running pdflatex (second pass)..."
pdflatex proposal.tex > /dev/null

echo "Step 4/4: Running pdflatex (final pass)..."
pdflatex proposal.tex > /dev/null

echo ""
echo "=== Compilation Complete ==="
echo "✓ Generated: proposal.pdf"
echo ""

# Check if PDF viewer is available
if command -v xdg-open &> /dev/null; then
    read -p "Would you like to open the PDF? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        xdg-open proposal.pdf &
    fi
elif command -v open &> /dev/null; then
    read -p "Would you like to open the PDF? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        open proposal.pdf &
    fi
fi
