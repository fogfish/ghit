# GitHub Issue Tags

## Inspiration

[Sane GitHub Labels](https://medium.com/@dave_lunny/sane-github-labels-c5d2e6004b63)

A following modification are applied

1. Issue state management is done via Kanban board, the number of state is reduced
1. `[@]` - State prefix
1. `[T]` - Type prefix
1. `[P]` - Priority prefix 


See labels here https://github.com/fogfish/ghit/labels


## Getting started

Get GitHub API [token](https://github.com/settings/tokens)

Install labels to your project

```
make GH_TOKEN=... GH_REPO=:owner/:repo
```
