# Scrolling Volume for playerctl in Polybar

## Requirements
 * bc
 * [playerctl](https://github.com/altdesktop/playerctl)

You can attach this to whatever module you want, but I like using
[polybar-spotify](https://github.com/Jvanrhijn/polybar-spotify)
by Jvanrhijn for spotify

## How to Use/Install

 1. Download `scroll-volume.sh`
 2. Make the script executable with `chmod +x scroll-volume.sh`
 3. Put `scroll-volume.sh` in `~/.config/polybar/polybar-scripts/`
 4. Add the following lines to the module you wish:

		scroll-up = $HOME/.config/polybar/polybar-scripts/scroll-volume.sh --up &
		scroll-down = $HOME/.config/polybar/polybar-scripts/scroll-volume.sh --down &

## Module Usage

* the `--up` and `--down` flags are for volume up and volume down respectively

## Configure for your player

* In the script, there are variables at the top
  1. `step` is the volume step for a single scroll in decimal percent
  2. `player` is the player you want playerctl to control

