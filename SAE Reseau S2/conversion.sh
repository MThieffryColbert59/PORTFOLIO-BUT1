#!/bin/bash
sudo apt-get install pandoc
sudo apt-get install texlive-xetex
pandoc -s "rapport.md" -o "rapport.html" --metadata title="Rapport"
pandoc -s "rapport.md" -o "rapport.pdf" --pdf-engine=pdflatex
