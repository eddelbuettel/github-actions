
## github-action 'r2u-setup'

This action adds [r2u][r2u] to an action running Ubuntu 'latest'
([example](https://github.com/eddelbuettel/spotifytop50us/blob/master/.github/workflows/update.yaml)).
It was written for, and used with, Ubuntu 22.04 'jammy' but (by relying on
`lsb_release`) should also work for Ubuntu 24.04 'noble' or later.

### Consider r-ci

This action provided the initial setup step for [r2u][r2u] in CI, and has
since been superceded by the
[r-ci](https://github.com/eddelbuettel/github-actions/tree/master/r-ci) from
this same repository. As of November 2026, this action here now behaves like
the newer one.

### Author

This action has been put together by Dirk Eddelbuettel.

### License

The code in this repository is licensed under the GNU GPL, Version 2 or later.

[r2u]: https://eddelbuettel.github.io/r2u
