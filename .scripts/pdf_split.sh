#!/bin/bash 
## Usage pdf_split.sh start_page last_page inputfile.PDF outputfile.PDF
## sudo pacman -S ghostscript
gs -sDEVICE=pdfwrite -q -dNOPAUSE -dBATCH -sOutputFile=$4 -dFirstPage=$1 -dLastPage=$2 $3
