#!/bin/bash
find ~/Pictures/papes3 -type f \( -name '*.*' \) -print0 |
shuf -n1 -z | xargs -0 feh --bg-fill

