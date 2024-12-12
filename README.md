
## github-action -- Some Simple (GitHub) Actions 

This repository provides a space for GitHub Actions usable from the standard YAML files.

### Content

- r-ci-setup: Adds [r-ci](https://eddelbuettel.github.io/r-ci) 'R Continuous Integration' an action running 'ubuntu-latest' (i.e. Ubuntu 22.04 aka 'jammy', or an explicitly selected version) or 'macos-latest' by downloading its `run.sh`
- r2u-setup: Adds [r2u](https://eddelbuettel.github.io/r2u) to an action running Ubuntu 22.04 aka 'jammy' ([example](https://github.com/eddelbuettel/spotifytop50us/blob/master/.github/workflows/update.yaml))
- r-ci-setup-bootstrap: Combines 'r-ci-setup' from above with the `./run.sh bootstrap` step which most often follows saving one more step in the yaml file

### Author

This repository and its code have been put together by Dirk Eddelbuettel.

### License

The code in this repository is licensed under the GNU GPL, Version 2 or later.
