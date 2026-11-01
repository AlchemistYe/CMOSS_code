#!/bin/bash

folders=("Semi-bandit" "Descending" "Ascending")

for folder in "${folders[@]}"
do
  echo "Running notebooks in: $folder"
  for notebook in $folder/*.ipynb
  do
    if [[ "$notebook" != *"main_draw.ipynb" ]]; then
      echo "  Executing $notebook"
      jupyter nbconvert --to notebook --inplace --execute "$notebook"
    fi
  done
done

echo "✅ All experiment notebooks executed (excluding main_draw.ipynb)."
