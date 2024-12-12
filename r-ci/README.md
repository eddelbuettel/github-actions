
## github-action 'r-ci'

This action sets up [r-ci](https://eddelbuettel.github.io/r-ci) for an action
running Ubuntu 'latest' (or a versioned Ubuntu, or 'macos-latest') by
fetching its (portable, not specific to GitHub Actions) script `run.sh` and
making it executable. It was initially written for Ubuntu 22.04 aka 'jammy'
but work equally for Ubuntu 24.04 aka 'noble', as well as for 'macOS-latest'.

This version builds on the predecessor 'r-ci-setup' and includes the
commonly-following 'bootstrap' step for an all-in 'r-ci' preparation
including setup and bootstrap.

### Author

This action has been put together by Dirk Eddelbuettel.

### License

The code in this repository is licensed under the GNU GPL, Version 2 or later.
