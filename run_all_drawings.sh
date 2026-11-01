#!/bin/bash

folders=("Semi-bandit" "Descending" "Ascending")

for folder in "${folders[@]}"
do
  draw_notebook="$folder/main_draw.ipynb"
  if [ -f "$draw_notebook" ]; then
    echo "Rendering: $draw_notebook"
    jupyter nbconvert --to notebook --inplace --execute "$draw_notebook"
  fi
done

echo "✅ All drawing notebooks executed."
