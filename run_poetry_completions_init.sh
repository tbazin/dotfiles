#!/bin/zsh
## HACK(@theis, 2024/05/06): should use $ZSH_CUSTOM as advocated by https://python-poetry.org/docs/#oh-my-zsh
# but it is not initialized when running this script
# mkdir $ZSH_CUSTOM/plugins/poetry
if
  command -v poetry 1>/dev/null 2>/dev/null
then
  mkdir -p ~/.oh-my-zsh/custom/plugins/poetry
  ## HACK(@theis, 2024/05/06): should use $ZSH_CUSTOM as advocated by https://python-poetry.org/docs/#oh-my-zsh
  # but it is not initialized when running this script
  # poetry completions zsh >$ZSH_CUSTOM/plugins/poetry/_poetry
  poetry completions zsh >~/.oh-my-zsh/custom/plugins/poetry/_poetry
fi
