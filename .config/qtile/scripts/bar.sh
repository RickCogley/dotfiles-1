#! /usr/bin/bash
#*
#*                  _    __ _ _
#*   __ _ ___  __ _| |_ / _(_) |___ ___  WEBSITE: https://goatfiles.github.io
#*  / _` / _ \/ _` |  _|  _| | / -_|_-<  REPOS:   https://github.com/goatfiles
#*  \__, \___/\__,_|\__|_| |_|_\___/__/  LICENCE: https://github.com/goatfiles/dotfiles/blob/main/LICENSE
#*  |___/
#*          MAINTAINERS:
#*              AMTOINE: https://github.com/amtoine antoine#1306 7C5EE50BA27B86B7F9D5A7BA37AAE9B486CFF1AB
#*              ATXR:    https://github.com/atxr    atxr#6214    3B25AF716B608D41AB86C3D20E55E4B1DE5B2C8B
#*

# ask the user for the size of the bar.
[[ ! -v DMFONT ]] && DMFONT="mononoki Nerd Font-20"
size=$(echo -e "tiny\nsmall\nmedium\nlarge\nhuge" | dmenu -c -l 10 -bw 5 -h 5 -fn "$DMFONT" -p "Choose a bar size (in px)")
[ "$?" = 1 ] && exit 0
size=$(echo "$size" | sed 's/ .*//')

# ask the user for the content of the bar.
case "$size" in
  huge|large) dmoptions="minimal\ndecreased (recommended)\nnormal";;
  *) dmoptions="minimal\ndecreased\nnormal";;
esac
style=$(echo -e "$dmoptions" | dmenu -c -l 10 -bw 5 -h 5 -fn "$DMFONT" -p " Please choose a bar style")
[ "$?" = 1 ] && exit 0
style=$(echo "$style" | sed 's/ .*//')

# ask the user for a style for the widget separator
dmoptions="slash colorful\nvertical colorful\nslash monochrome\nvertical monochrome"
sep_style=$(echo -e "$dmoptions" | dmenu -c -l 10 -bw 5 -h 5 -fn "$DMFONT" -p "Please choose a separator style")
[ "$?" = 1 ] && exit 0
case "$sep_style" in
  "slash colorful" ) sep_style="scolor" ;;
  "vertical colorful" ) sep_style="vcolor" ;;
  "slash monochrome" ) sep_style="smono" ;;
  "vertical monochrome" ) sep_style="vmono" ;;
esac

# change the ~/.config/qtile/style.py file to reflect the new bar
echo "size: $size; style: $style"
sed -i "s/ = font_sizes\..*/ = font_sizes\.$size/" ~/.config/qtile/style.py
sed -i "s/ = bar_styles\..*/ = bar_styles\.$style/" ~/.config/qtile/style.py
sed -i "s/ = sep_styles\..*/ = sep_styles\.$sep_style/" ~/.config/qtile/style.py
# restart qtile to apply the changes
qtile cmd-obj -o cmd -f restart
