#! /usr/bin/bash
#                        _       __             __                                   __      __
#        _______________(_)___  / /______     _/_/           _________  __  ______  / /_____/ /___ _      ______
#       / ___/ ___/ ___/ / __ \/ __/ ___/   _/_/            / ___/ __ \/ / / / __ \/ __/ __  / __ \ | /| / / __ \
#      (__  ) /__/ /  / / /_/ / /_(__  )  _/_/             / /__/ /_/ / /_/ / / / / /_/ /_/ / /_/ / |/ |/ / / / /
#     /____/\___/_/  /_/ .___/\__/____/  /_/     ______    \___/\____/\__,_/_/ /_/\__/\__,_/\____/|__/|__/_/ /_/
#                     /_/                       /_____/
#
# Description: simple countdown
#              deprecated -> see termdown instead.
# Dependencies: play
# GitHub: https://github.com/a2n-s/dotfiles 
# License: https://github.com/a2n-s/dotfiles/LICENSE 
# Contributors: Stevan Antoine


date1=$((`date +%s` + $1));
while [ "$date1" -ge `date +%s` ]; do
 echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
 sleep 0.1
done
echo -n "COUNTDOWN OVER!!"
while [ true ]; do
    play -q -n synth .1 sine 880 vol 0.5
    play -q -n synth .1 sine 880 vol 0.5
    play -q -n synth .1 sine 880 vol 0.5
    play -q -n synth .1 sine 880 vol 0.5
    play -q -n synth .1 sine 880 vol 0.5
 sleep 0.5
done
