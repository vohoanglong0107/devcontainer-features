# Dev Container Features

## `neovim`

Installs Neovim nightly and sets it as the default editor.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/vohoanglong0107/devcontainer-features/neovim:0": {
            "sha": "master"
        }
    }
}
```

### `preset`

Install all my favorite tools and configurations, including a setup that seamlessly intergrates Neovim within devcontainer with Wezterm, allowing all Wezterm features to be use as they would on a regular host.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/vohoanglong0107/devcontainer-features/preset:0": {}
    }
}
```
