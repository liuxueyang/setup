import XMonad
import XMonad.Config.Desktop
import XMonad.Wallpaper

main = do
  -- randomly pick a wallpaper.
  setRandomWallpaper ["/home/algouage/Pictures/wallpaper"]
  xmonad desktopConfig
    {
      terminal = "alacritty"
    , modMask = mod4Mask
    }

