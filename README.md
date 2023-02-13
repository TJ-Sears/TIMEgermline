[![MIT License][license-shield]][license-url]

[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: https://github.com/luisvalesilva/multisurv/blob/master/LICENSE


<h1 align="center">Germline TIME :dna:</h1>

<p align="center">
  <p align="center">
  <strong>TIME: <ins>T</ins>umor <ins>I</ins>mmune <ins>M</ins>icro<ins>E</ins>nvironment</strong>
  </p>

  <p align="center">
    <br />
    <a href="#using-the-code">Using the code</a>
    •
    <a href="#repo-structure">Repo structure</a>
    •
    <a href="#license">Figure reproducebility</a>
    </p>
</p>

<br />

---

Germline TIME paper repository:

__Germline modifiers of the tumor immune microenvironment implicate drivers of cancer risk and immunotherapy response__   |   [Nature Communications](LINK TBD)

<br /><br />

![TIME SNP schematic](plots/schematic.png)

<br /><br />

> __Usability note:__ The notebooks in this archive are not intented for automated pipelines.
They along with all relevant tables are shared in the spirit of reproducability and open science. 
Please direct all usage issues to tsears@ucsd.edu

<br /><br />

## About the notebooks:

All libraries listed in the notebooks will need to be installed for proper function. Python version 3.7.13 was used for all python analysis and R version  4.2.2 was used for R analysis. Notebooks should generally be used in the order of figure creation for best results.

## Structure of Repo

### Basic components

| Content | Code source | Description |
|---|---|---|
| notebooks | [`data`](data/) directory | Jupyter notebooks organized by relevant figure |
| scripts | [`scripts`](scripts/) | Scripts called on by the notebooks or otherwise useful for intermediate data generation |
| tables | [`tables`](tables/) | Supplementary and SNP tables used as data sources |
| plots | [`plots`](plots/) | Plots and figures generated by the study |

### Paper figures and major tables

| Content | Files | Description |
|---|---|---|
| Fig. 1 - Model schematic | [Jupyter notebook](notebooks/fig1-analyze-IP-components.ipynb) | Schematic overview of TIME SNP curation |
| Fig. 2 - Circos plot | [Jupyter notebook](notebooks/fig2-literature-germline.ipynb) | Circos plot and chromosome plot describing location and relationships of TIME SNPs |
| Fig. 3 - Cancer risk | [Jupyter notebook](notebooks/fig3-cancer-risk.ipynb) | Cancer risk in Melanoma and Prostate cancer + TCGA melanoma TME changes |
| Fig. 4 - Cancer overall survival | [Jupyter notebook](notebooks/fig4_CancerSurvivalOS.ipynb) | Pancan survival and LUAD validation |
| Fig. 4 - Cancer progression-free survival | [Jupyter notebook](notebooks/fig4_CancerSurvival_PFI.ipynb) | Pancan PFS analysis |
| Fig. 5 - ICB response prediction | [Jupyter notebook](notebooks/fig5-cancer-icb-response.ipynb) | ICB response prediction model |
| Fig. 6 - TIME SNP landscape | [Jupyter notebook](notebooks/fig6-snp_unification_VEP_processing.ipynb) | Landscape of TIME SNPs and immune cell specific relevance |
| Fig. 7 - Clinical relevance | [Rscript](notebooks/GermlineImmunePlots.R) | Clinical relevance of curated high-impact SNPs and availability of molecular inhibitors |

| Content | Files | Description |
|---|---|---|
| Mega snp table | [Table](tables/snp_tables/megasnptable.txt) <br> [Jupyter notebook](figures_and_tables/table-multisurv_evaluation.ipynb) <br> [`results.csv`](figures_and_tables/results.csv) | Baseline model evaluation <br> MultiSurv evaluation <br> Result table |

Other supplementary tables can be found in the  [`tables`](tables/) directory.

## License

This project is licensed under the terms of the
[MIT](https://tldrlegal.com/license/mit-license) license. See
[LICENSE](LICENSE) file for details.

