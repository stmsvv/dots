#! /bin/bash
number=$(hyprctl hyprsunset gamma)
number_rounded=${number%.*}
echo $number_rounded
