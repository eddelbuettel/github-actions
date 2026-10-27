
## github-action 'r-ci-co'

Following the initial `actions/checkout@vN`, this action sets up
[r-ci](https://eddelbuettel.github.io/r-ci) for an action running Ubuntu
'latest' (or a versioned Ubuntu, or 'macos-latest') by fetching its
(portable, not specific to GitHub Actions) script `run.sh` and making it
executable. It was initially written for Ubuntu 22.04 aka 'jammy' but works
equally for Ubuntu 24.04 aka 'noble' and Ubuntu 26.04 aka 'resolute', as well
with for 'macOS-latest'.

This version builds on the predecessors 'r-ci-setup' and 'r-ci' but now
includes both the initial checkout and the commonly-following 'bootstrap'
step for an all-in 'r-ci' preparation including setup and bootstrap.

By including the `actions@checkout@vN` step, one is freed from having to
update it from N to N+1 every few months. This is now done once, here in this
action. Should it ever be behind, please file an issue.

### Options

This action takes two optional inputs: 

- `dev_version` can be selected to fetch `dev_run.sh` instead of `run.sh`
  (but note that `dev_run.sh` is frequently identical to `run.sh`; if not
  this option makes testing easy), 
  
- `backend` to pick `BSPM` (the default in `run.sh`) or `RAPT` for binary
  package installation from r2u


### Author

This action has been put together by Dirk Eddelbuettel.

### License

The code in this repository is licensed under the GNU GPL, Version 2 or later.
