
## github-action 'ci': checkout, bootstrap, dependencies

This action starts by calling the default action 'checkout'. It then
sets up [r-ci](https://eddelbuettel.github.io/r-ci) for an action
running Ubuntu 'latest' (or a versioned Ubuntu, or 'macos-latest') by
fetching its (portable, not specific to GitHub Actions) script `run.sh` and
making it executable. It was initially written for Ubuntu 22.04 aka 'jammy'
but works equally for Ubuntu 24.04 aka 'noble' and Ubuntu 26.04 aka 'resolute',
as well with for 'macOS-latest'.

This version builds on the predecessors 'r-ci-setup' 'r-ci' and includes the
commonly-following 'bootstrap' step for an all-in 'r-ci' preparation
including setup and bootstrap.

It goes further 

### Options

This action takes three optional inputs: 

- `dev_version` can be selected to fetch `dev_run.sh` instead of `run.sh`
  (but note that `dev_run.sh` is frequently identical to `run.sh`; if not
  this option makes testing easy), 
  
- `backend` to pick `BSPM` (the default in `run.sh`) or `RAPT` for binary
  package installation from r2u

- `suggests` to install suggested packages, this defaults to 'TRUE' as it is
  relatively cheap with r2u (or macOS binaries). It can be suppressed by
  using 'FALSE' in which case the R environment variable
  `_R_CHECK_FORCE_SUGGESTS_` should be set to "false".

### Author

This action has been put together by Dirk Eddelbuettel.

### License

The code in this repository is licensed under the GNU GPL, Version 2 or later.
