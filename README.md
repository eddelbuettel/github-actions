
## github-action -- Some Simple (GitHub) Actions 

This repository provides a space for GitHub Actions usable from the standard YAML files.

### Content

#### Current

- r-ci: Adds [r-ci](https://eddelbuettel.github.io/r-ci) 'R Continuous Integration' as an action
supporting 'ubuntu-latest' or 'macos-latest' by downloading `run.sh` and running the bootstraps
step.

- r2u-setup: Adds [r2u](https://eddelbuettel.github.io/r2u) to an action running Ubuntu 'latest'
  ([example](https://github.com/eddelbuettel/spotifytop50us/blob/master/.github/workflows/update.yaml)) 
- ccache-with-R: Add [ccache](https://ccache.dev/) support for faster CI via cached compilation,
  with full setup for R package CI
  
- ci: Adds the checkout step and then runs r-ci

#### Older

- r-ci-setup: Adds [r-ci](https://eddelbuettel.github.io/r-ci) 'R Continuous
  Integration' an action running 'ubuntu-latest' or 'macos-latest' by
  downloading its `run.sh` script; note you must run the bootstrap step
  yourself so action `r-ci` is preferable


### Author

This repository and its code have been put together by Dirk Eddelbuettel.

### License

The code in this repository is licensed under the GNU GPL, Version 2 or later.
