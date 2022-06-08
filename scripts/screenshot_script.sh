#!/usr/bin/env bash
maim -s | tee ~/Pictures/screenshots/$(date +%d%m%Y-%H%M%S.png) | xclip -selection clipboard -t image/png
