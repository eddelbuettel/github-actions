
## github-action -- Some Simple (GitHub) Actions 

This repository provides a space for GitHub Actions usable from the standard YAML files.

### Content

#### Current

- r-ci: Adds [r-ci](https://eddelbuettel.github.io/r-ci) 'R Continuous Integration' as an action supporting 'ubuntu-latest' or 'macos-latest' by downloading `run.sh` and running the bootstraps step. It takes two optional inputs: `dev_version` to fetch `dev_run.sh` instead of `run.sh`, and `backend` to pick `BSPM` (the default) or `RAPT` for binary installs on Linux:

```yaml
      - name: Setup
        uses: eddelbuettel/github-actions/r-ci@master
        with:
          backend: RAPT
```

- r2u-setup: Adds [r2u](https://eddelbuettel.github.io/r2u) to an action running Ubuntu 22.04 aka 'jammy' ([example](https://github.com/eddelbuettel/spotifytop50us/blob/master/.github/workflows/update.yaml))

#### Older

- r-ci-setup: Adds [r-ci](https://eddelbuettel.github.io/r-ci) 'R Continuous Integration' an action running 'ubuntu-latest' or 'macos-latest' by downloading its `run.sh` script; note you must run the bootstrap step


### Author

This repository and its code have been put together by Dirk Eddelbuettel.

### License

The code in this repository is licensed under the GNU GPL, Version 2 or later.
