import XMonad
import XMonad.Config.Desktop
import XMonad.Wallpaper

main = do
  -- randomly pick a wallpaper.
  setRandomWallpaper ["$HOME/Pictures/wallpaper"]
  xmonad desktopConfig
    {
      terminal = "alacritty"
    , modMask = mod4Mask
    }

