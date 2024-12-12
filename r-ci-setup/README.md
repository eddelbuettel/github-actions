
## github-action 'r-ci-setup'

This action sets up [r-ci](https://eddelbuettel.github.io/r-ci) for an action
running Ubuntu 'latest' (or a versioned Ubuntu, or 'macos-latest') by
fetching its (portable, not specific to GitHub Actions) script `run.sh` and
making it executable. It was initially written for Ubuntu 22.04 aka 'jammy'
but work equally for Ubuntu 24.04 aka 'noble', as well as for 'macOS-latest'.

### Author

This action has been put together by Dirk Eddelbuettel.

### License

The code in this repository is licensed under the GNU GPL, Version 2 or later.
