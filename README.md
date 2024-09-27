

<!-- README.md is generated from README.qmd. Please edit that file -->

# Pandemic Pass? Treaty Derogations and Human Rights Practices During COVID-19

<!-- badges: start -->

[![Preprint](https://img.shields.io/badge/Preprint-10.31235%2Fosf.io%2Fy8ked-blue)](https://doi.org/10.31235/osf.io/y8ked)
[![OSF
DOI](https://img.shields.io/badge/OSF-10.17605%2FOSF.IO%2FAQVNK-blue)](https://doi.org/10.17605/OSF.IO/AQVNK)
[![Code
DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.12817616.svg)](https://doi.org/10.5281/zenodo.12817616)
<!-- badges: end -->

[Suparna Chaudhry](https://www.suparnachaudhry.com/) • Lewis and Clark
College  
[Audrey Comstock](https://audreylcomstock.weebly.com/) • Arizona State
University  
[Andrew Heiss](https://www.andrewheiss.com/) • Andrew Young School of
Policy Studies • Georgia State University

------------------------------------------------------------------------

## Abstract

This research note asks whether states issuing pandemic-era human rights
treaty derogations implemented emergency provisions as intended or used
them to abuse human rights during a time of crisis. In an effort to
combat the COVID-19 pandemic, many countries declared states of
emergency and derogated (temporarily suspended) from their international
human rights treaty obligations. Using data from the Varieties of
Democracy PanDem dataset and the Oxford COVID-19 Government Response
Tracker, we find that states that derogated from their international
human rights obligations imposed emergency measures that were temporary
and did not violate non-derogable rights. On the other hand, states that
did not derogate were more likely impose discriminatory measures, enact
emergency measures without time limits and violate non-derogable rights.
Our results support the role that flexibility mechanisms such as
derogations play in international law and show that states are being
sincere about their intentions and not, generally, using these
mechanisms to cover abusive behavior.

------------------------------------------------------------------------

## How to download and replicate

> [!NOTE]
>
> The complete project repository, which includes the source for [the
> statistical analysis notebook
> website](https://stats.andrewheiss.com/mountainous-mackerel/), is
> available at
> [`mountainout-mackerel`](https://github.com/andrewheiss/mountainous-mackerel)
> on GitHub. To replicate the findings and re-run the analysis, you can
> use a Docker container at
> [`mountainous-mackerel-docker`](https://github.com/andrewheiss/mountainous-mackerel-docker),
> which will create a complete computing envirionment for running
> everything. Full details and instructions [are available
> there](https://github.com/andrewheiss/mountainous-mackerel-docker).
>
> This repository is a simplified version that only generates an HTML
> version of the manuscript and appendix.

You can either [download the compendium as a ZIP
file](./archive/main.zip) or use GitHub to clone or fork the compendium
repository (see the green “Clone or download” button at the top of the
GitHub page).

To maximize replicability, we wrote our manuscript using
[Quarto](https://quarto.org/), which allowed us to mix computational
figures, text, and tables with the actual prose of the manuscript. This
means that there’s no need to rely on comments within code to identify
the location of each appropriate result in the manuscript—all results
are programmatically included when rendering the document.

We use the [{targets} package](https://docs.ropensci.org/targets/) to
manage all file dependencies and run the analysis. ([See this for a
short helpful walkthrough of
{targets}.](https://books.ropensci.org/targets/walkthrough.html)).

Follow these steps to install everything and replicate the results:

1.  Install these preliminary things:

    - **R 4.4.0** (or later) and **RStudio**.

    - **Quarto 1.6.1** (or later). As of this writing, the current
      stable version of Quarto is 1.5; [download 1.6.x from
      GitHub](https://github.com/quarto-dev/quarto-cli/releases).

    - **A C++ compiler and GNU Make**. Complete instructions for macOS,
      Windows, and Linux [are available at CmdStan’s
      documentation](https://mc-stan.org/docs/cmdstan-guide/installation.html#cpp-toolchain).
      In short, do this:

      - **macOS**: Run this terminal command and follow the dialog that
        pops up after to install macOS’s Command Line Tools:

        ``` sh
        xcode-select –-install
        ```

      - **Windows**: [Download and install Rtools from
        CRAN](https://cran.r-project.org/bin/windows/Rtools/rtools44/rtools.html)

      - **Linux**: Run this terminal command (depending on your
        distribution; this assumes Ubuntu/Debian):

        ``` sh
        sudo apt install g++ make
        ```

    - (*macOS only*): [Download and install
      XQuartz](https://www.xquartz.org/)

    - **Fonts**: Download and install this font. On Windows, install is
      as an administrator so that R and Quarto have access to it.

      - [Noto Sans](https://fonts.google.com/specimen/Noto+Sans)

2.  Open `mountainous-mackerel.Rproj` to open a new RStudio instance
    pointed at the project.

3.  In RStudio, open `install_packages.R` and run all the code there.
    This uses {pacman} to install all required R packages—it downloads
    the latest versions of each package from CRAN and installs them
    systemwide.

4.  Once all the package are installed, run `targets::tar_make()` in the
    R console to run the full analysis pipeline. This will take ≈10
    minutes the first time.

    > [!NOTE]
    >
    > For whatever reason, when the pipeline runs it will show errors
    > like `Error: object 'who_region' not found`.
    >
    > These can be disregarded—everything builds fine and nothing stops
    > with the errors—it’s not clear why those are appearing ::shrug::

5.  When the pipeline is all the way done, find the manuscript and
    appendix files at `manuscript/output/`.

## 🏔️🐟: Note on “mountainous mackerel” project name

Because project titles change all the time with revisions, rewriting,
and peer review, we used [{codename}](http://svmiller.com/codename/) to
generate an [Ubuntu-style](https://wiki.ubuntu.com/DevelopmentCodeNames)
internal-to-us project name that won’t change.

``` r
library(codename)
codename_message()
#> code name generated by {codename} v.0.4.0

codename(seed = "covid and ngos", type = "ubuntu")
#> [1] "mountainous mackerel"
```

## Licenses

**Text and figures:** All prose and images are licensed under Creative
Commons ([CC-BY-4.0](http://creativecommons.org/licenses/by/4.0/)).

**Code:** All code is licensed under the [MIT License](LICENSE.md).

## Contributions and Code of Conduct

We welcome contributions from everyone. Before you get started, please
see our [contributor guidelines](CONTRIBUTING.md). Please note that this
project is released with a [Contributor Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
