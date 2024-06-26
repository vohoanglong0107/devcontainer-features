#!/bin/bash

# This test file will be executed against an auto-generated devcontainer.json that
# includes the 'preset' Feature with no options.
#
# For more information, see: https://github.com/devcontainers/cli/blob/main/docs/features/test.md
#
# Eg:
# {
#    "image": "<..some-base-image...>",
#    "features": {
#      "preset": {}
#    },
#    "remoteUser": "root"
# }
#
# Thus, the value of all options will fall back to the default value in
# the Feature's 'devcontainer-feature.json'.
# For the 'preset' feature, that means the default favorite greeting is 'hey'.
#
# These scripts are run as 'root' by default. Although that can be changed
# with the '--remote-user' flag.
#
# This test can be run with the following command:
#
#    devcontainer features test \
#                   --features preset   \
#                   --remote-user root \
#                   --skip-scenarios   \
#                   --base-image mcr.microsoft.com/devcontainers/base:ubuntu \
#                   /path/to/this/repo

set -e

# Optional: Import test library bundled with the devcontainer CLI
# See https://github.com/devcontainers/cli/blob/HEAD/docs/features/test.md#dev-container-features-test-lib
# Provides the 'check' and 'reportResults' commands.
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib. Syntax is...
# check <LABEL> <cmd> [args...]
check "execute atuin" bash -c "atuin --version"
check "execute bat" bash -c "bat --version"
check "execute chezmoi apply successfully" bash -c "chezmoi cat ~/.zshrc"
check "execute difftastic" bash -c "difft --version"
check "execute fd" bash -c "fd --version"
check "execute github cli successfully" bash -c "gh"
check "execute lazygit" bash -c "lazygit --version"
check "execute nvim" bash -c "nvim --version"
check "execute ripgrep" bash -c "rg --version"

# Report results
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults