
# 🧪 CMOSS Experiment Code

This repository contains the official code for the experiments in our paper, including semi-bandit and cascading bandit simulations.

---

## 📂 Branches and Correspondence

- `Semi-bandit/` — Experiments for Section 4.2 **"Ablation Studies"** and Appendix C.2 **"Ablation Studies and Beyond"**.
- `Descending/` and `Ascending/` — Experiments for Appendix C.4 **"Cascading Bandit"**, with descending and ascending user feedback respectively.

All cascading experiments are conducted under the **disjunctive** feedback model.

---

## ⚙️ Software Requirements

- Python: 3.9.23
- Required libraries:
  ```
  numpy==1.23.5
  pandas==2.0.3
  matplotlib==3.7.2
  seaborn==0.13.2
  tqdm==4.67.1
  ```

You can install all dependencies via:

```bash
pip install -r requirements.txt
```

---

## 🚀 How to Run Experiments

### A. Manually (Step-by-step)

1. **Run All Experimental Notebooks** (excluding `main_draw.ipynb`) in each folder to generate:
   - Detailed experiment logs (`*_conv_*.csv`)
   - Summary tables (`*_summary_*.csv`)

   Example:
   Running `Descending/l_synthetic_varying_k.ipynb` will output:

   - `Descending/results/l_conv_synthetic_varying_k.csv`
   - `Descending/results/l_summary_synthetic_varying_k.csv`

2. **Run the Drawing Notebook** (`main_draw.ipynb`) in each folder to generate plots.

   Example:
   Running `Descending/main_draw.ipynb` will generate:

   - `Descending/descending_combined_plot.png`
   - `Descending/descending_combined_plot.pdf`

---

### B. Automatically (Using Provided Shell Scripts)

Make sure `jupyter` is installed (e.g., `pip install notebook`).

#### 🔁 Run All Experiments:

```bash
./run_all_experiments.sh
```

This script executes all notebooks **except** `main_draw.ipynb`.

#### 🖼️ Run All Plots:

```bash
./run_all_drawings.sh
```

This script runs only the `main_draw.ipynb` notebooks in each folder to generate figures.

---

## 📎 Notes

- Output files (CSV and figures) are automatically saved to the corresponding folder.
- Each run is deterministic given the same seed setup.
- See Appendix C for experimental design and parameter setup.
- Each folder contains `arm_info.txt` and `user_preference.txt`, which are materials derived from the Yelp dataset.

---


