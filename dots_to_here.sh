#!/bin/bash

[ -f ~/.i3/config ] && cp ~/.i3/config ./i3/i3config && echo ~/.i3
[ -f ~/.i3/i3status_top.conf ] && cp ~/.i3/i3status_top.conf ./i3/i3status_top.conf && echo ~/.i3
[ -f ~/.zshrc ] && cp ~/.zshrc ./zshrc && echo ~/.zshrc
[ -f ~/.yabairc ] && cp ~/.yabairc ./yabairc && echo ~/.yabairc
[ -f ~/.skhdrc ] && cp ~/.skhdrc ./skhdrc && echo ~/.skhdrc
