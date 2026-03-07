# P6's POSIX.2: p6df-figma

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Aliases](#aliases)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

p6df module for Figma: CLI tools (`@figma-export/cli`, `@figma/code-connect`),
`FIGMA_API_KEY` profile support, and MCP server (`figma-mcp`) for AI-driven
design file inspection and component access.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

- `fcli` -> `figma-export`

### Functions

#### p6df-figma

##### p6df-figma/init.zsh

- `p6df::modules::figma::aliases::init()`
- `p6df::modules::figma::deps()`
- `p6df::modules::figma::langs()`
- `p6df::modules::figma::mcp()`
- `p6df::modules::figma::profile::off()`
- `p6df::modules::figma::profile::on(profile, env_or_token)`
  - Args:
    - profile
    - env_or_token
- `str str = p6df::modules::figma::prompt::mod()`

## Hierarchy

```text
.
├── init.zsh
└── README.md

1 directory, 2 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
