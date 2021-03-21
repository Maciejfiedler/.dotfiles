import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeysP)
import System.IO

myTerminal = "alacritty"
myBrowser = "brave"

main = do   
    xmproc <- spawnPipe "xmobar"
    spawnPipe "trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 0x191970 --height 12 &"
    xmonad $ docks defaultConfig
        { terminal = myTerminal
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        }
        `additionalKeysP` 
        [ ("M-M1-<Return>", spawn myTerminal) 
        , ("M-M1-b", spawn myBrowser) 
        , ("M1-w", kill)
        , ("M1-p", spawn "exe=`dmenu_path | dmenu` && eval \"exec $exe\"")
        ]
