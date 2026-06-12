# Releasing

This repository is **not released on its own.** Its version is driven by the
sibling [`ha_solar_assistant`](https://github.com/Solar-Assistant/ha_solar_assistant)
integration repository, and the two always share one version. Do **not** bump
`solar_assistant/config.yaml` by hand.

## Why the version is coupled

The add-on does not bundle the integration. At install time, `run.sh` downloads
the integration release zip, with the version read from `config.yaml`:

    https://github.com/Solar-Assistant/ha_solar_assistant/releases/download/v${VERSION}/solar_assistant.zip

That URL only resolves when this repo's version matches an integration release
tag, so the two must stay identical.

## How a release happens

Releases are cut from the integration repo. Its `scripts/release.sh` bumps and
tags `ha_solar_assistant`, then sets, commits, and pushes
`solar_assistant/config.yaml` here to the same version, in lockstep.
