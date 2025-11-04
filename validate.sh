#!/bin/bash
# LaTeX Template Validation Script
# This script checks the LaTeX template for common errors

echo "=== LaTeX Template Validation ==="
echo ""

# Check if main files exist
echo "Checking files..."
FILES=("proposal.tex" "references.bib" "Makefile" ".gitignore")
all_exist=true

for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        echo "✓ $file exists"
    else
        echo "✗ $file is missing"
        all_exist=false
    fi
done

if [ "$all_exist" = false ]; then
    echo ""
    echo "Error: Some required files are missing!"
    exit 1
fi

echo ""
echo "Checking LaTeX document structure..."

# Check for required LaTeX commands
if grep -q "\\documentclass" proposal.tex; then
    echo "✓ Document class defined"
else
    echo "✗ Missing \\documentclass"
    exit 1
fi

if grep -q "begin{document}" proposal.tex; then
    echo "✓ Document begin found"
else
    echo "✗ Missing \\begin{document}"
    exit 1
fi

if grep -q "end{document}" proposal.tex; then
    echo "✓ Document end found"
else
    echo "✗ Missing \\end{document}"
    exit 1
fi

if grep -q "bibliography{references}" proposal.tex; then
    echo "✓ Bibliography reference found"
else
    echo "✗ Missing bibliography reference"
    exit 1
fi

echo ""
echo "Checking BibTeX file..."

# Count BibTeX entries
entry_count=$(grep -c "^@" references.bib)
echo "✓ Found $entry_count BibTeX entries"

if [ $entry_count -lt 5 ]; then
    echo "⚠ Warning: Less than 5 references found"
fi

echo ""
echo "Checking Makefile..."

# Check Makefile targets
if grep -q "^all:" Makefile; then
    echo "✓ 'all' target found"
else
    echo "✗ Missing 'all' target"
    exit 1
fi

if grep -q "^clean:" Makefile; then
    echo "✓ 'clean' target found"
else
    echo "✗ Missing 'clean' target"
    exit 1
fi

echo ""
echo "=== Validation Complete ==="
echo "✓ All checks passed!"
echo ""
echo "To compile the document:"
echo "  1. Ensure you have LaTeX installed (texlive or similar)"
echo "  2. Run: make"
echo "  3. The PDF will be generated as proposal.pdf"
echo ""
