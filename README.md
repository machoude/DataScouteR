# DataScouteR

**scouteR** is an R package for football scouting and player evaluation, providing **league-adjusted, position-specific ratings** derived from publicly available data and scaled for **intuitive interpretation**.

The package is designed to offer a clean, ready-to-use interface for analysts, researchers, and practitioners who want access to **processed scouting outputs**, without needing to run complex models themselves.

---

## Overview

At its core, `DataScouteR` provides precomputed player ratings that:

- Are **league-adjusted** to account for competition difficulty  
- Incorporate **filtering** to not include players with limited minutes  
- Are scaled to a **1–20 range**, inspired by *Football Manager*, for easier interpretation and comparison  

The emphasis is on **interpretability, robustness, and comparability across leagues**.

---

## Data Source

All underlying match and event-level statistics are sourced from:

- **FBref** (powered by StatsBomb data, where applicable)

FBref provides high-quality, publicly accessible football statistics.  
`scouteR` uses these data as inputs but **does not redistribute raw FBref datasets**.

---

## Methodology (High-Level)

The workflow behind the package follows these principles:

- Player performance metrics are modeled using **z-scores and logistic mapping**
- **Player-level effects** are filtered to reduce noise from small samples
- **League-level effects** are included to implicitly account for competition strength
- Final latent ability estimates are transformed to a **1–20 scale** using a smooth, monotonic mapping

This scaling is **not intended to replicate Football Manager internally**, but rather to:
- Provide a familiar reference frame
- Improve interpretability for practitioners

---

## Why a 1–20 Scale?


The 1–20 scale:
- Preserves **relative differences** between players
- Compresses extreme values smoothly
- Allows quick qualitative interpretation (e.g. *elite*, *above average*, *poor*)

This makes the results more accessible for:
- Scouting discussions
- Player profiling
- Comparative analysis across leagues

---

## Installation

You can install the package directly from GitHub:

```r
install.packages("remotes")
remotes::install_github("machoude/DataScouteR", subdir = "scouteR")
```
