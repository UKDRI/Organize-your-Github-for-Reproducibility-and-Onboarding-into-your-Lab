#!/bin/bash
# Usage: bash new-project.sh my-project-name
# Creates a numbered UKDRI / GIN-Tonic-style research project structure.

PROJECT=$1

if [ -z "$PROJECT" ]; then
    echo "Usage: bash new-project.sh my-project-name"
    exit 1
fi

mkdir -p \
  "$PROJECT/01-Project_management" \
  "$PROJECT/02_material_methods" \
  "$PROJECT/03_data/001_rawdata" \
  "$PROJECT/03_data/990_processed_data" \
  "$PROJECT/04_data_analysis" \
  "$PROJECT/05_figures" \
  "$PROJECT/06_dissemination" \
  "$PROJECT/07_miscellaneous"

touch "$PROJECT/README.md"

echo "✓ Created: $PROJECT/"
echo "  Next step: fill in README.md"
