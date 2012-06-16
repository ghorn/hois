module Main
where

import Unsafe.Coerce

import Control.Monad(when)
import Control.Concurrent(threadDelay)
import System.Environment(getEnv)

import Graphics.X11.Xlib

import OIS
import OIS.Types

main = do
  displayname <- getEnv "DISPLAY"
  xdisp <- openDisplay displayname -- TODO: check for null ptr
  xwin <- createSimpleWindow xdisp (defaultRootWindow xdisp) 0 0 100 100 0 0 0
  mapWindow xdisp xwin
  selectInput xdisp xwin structureNotifyMask
  allocaXEvent $ \ev -> do
    let fn = do
             nextEvent xdisp ev
             et <- get_EventType ev
             if et /= mapNotify 
               then fn
               else return ()
    fn

  let hwnd = fromIntegral xwin
  im <- inputManager_createInputSystem_size_t hwnd
  -- unsafeCoerce instead of static_cast
  ms <- unsafeCoerce $ inputManager_createInputObject im OISMouse True ""
  kb <- unsafeCoerce $ inputManager_createInputObject im OISKeyboard True ""
  run ms kb

run ms kb = do
  threadDelay 50000
  object_capture (toObject kb)
  object_capture (toObject ms)

  mstate <- mouse_getMouseState ms
  bd <- mouseState_buttonDown mstate MB_Left
  when bd $ putStrLn "Left mouse button is down"
  
  esc <- keyboard_isKeyDown kb KC_ESCAPE
  if esc
    then putStrLn "Escape pressed"
    else run ms kb

