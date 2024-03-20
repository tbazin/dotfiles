#!/bin/sh
if
  command -v conda 1>/dev/null 2>/dev/null
then
  conda init zsh
fi
