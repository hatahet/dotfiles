import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Spiral
import XMonad.Layout.ThreeColumns
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

import Data.Ratio

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ defaultConfig
        { modMask = mod4Mask
        , manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = myLayout
        , logHook = dynamicLogWithPP $ xmobarPP
                { ppOutput = hPutStrLn xmproc
                , ppTitle = xmobarColor "green" "" . shorten 50
                }
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_l), spawn "gnome-screensaver-command --lock")
        ]
        where
            myLayout = avoidStruts $ Tall 1 (3/100) (1/2)
                ||| ThreeCol 1 (3/100) (1/2)
                ||| spiral (3 % 4)
                ||| Full
