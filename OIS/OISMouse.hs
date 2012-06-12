{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISMouse(
mouseState_with, 
mouseEvent_with, 
mouseState_delete, 
mouseState_new, 
mouseState_buttonDown, 
mouseState_clear, 
mouseEvent_new, 
mouseEvent_delete, 
mouseListener_delete, 
mouseListener_mouseMoved, 
mouseListener_mousePressed, 
mouseListener_mouseReleased, 
mouse_delete, 
mouse_setEventCallback, 
mouse_getEventCallback
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

mouseState_with :: (MouseState -> IO a) -> IO a
mouseState_with  f = do
    obj <- mouseState_new 
    res <- f obj
    mouseState_delete obj
    return res

mouseEvent_with :: Object -> MouseState -> (MouseEvent -> IO a) -> IO a
mouseEvent_with p1 p2 f = do
    obj <- mouseEvent_new p1 p2
    res <- f obj
    mouseEvent_delete obj
    return res

foreign import ccall "OISMouse.h OIS_MouseState_delete" c_mouseState_delete :: MouseState -> IO ()
mouseState_delete :: MouseState -> IO ()
mouseState_delete p1 =   c_mouseState_delete p1

foreign import ccall "OISMouse.h OIS_MouseState_new" c_mouseState_new :: IO MouseState
mouseState_new :: IO MouseState
mouseState_new  =   c_mouseState_new 

foreign import ccall "OISMouse.h OIS_MouseState_buttonDown" c_mouseState_buttonDown :: MouseState -> CInt -> IO CBool
mouseState_buttonDown :: MouseState -> MouseButtonID -> IO Bool
mouseState_buttonDown p1 p2 =  liftM toBool $  c_mouseState_buttonDown p1 (mouseButtonIDToCInt p2)

foreign import ccall "OISMouse.h OIS_MouseState_clear" c_mouseState_clear :: MouseState -> IO ()
mouseState_clear :: MouseState -> IO ()
mouseState_clear p1 =   c_mouseState_clear p1

foreign import ccall "OISMouse.h OIS_MouseEvent_new" c_mouseEvent_new :: Object -> MouseState -> IO MouseEvent
mouseEvent_new :: Object -> MouseState -> IO MouseEvent
mouseEvent_new p1 p2 =   c_mouseEvent_new p1 p2

foreign import ccall "OISMouse.h OIS_MouseEvent_delete" c_mouseEvent_delete :: MouseEvent -> IO ()
mouseEvent_delete :: MouseEvent -> IO ()
mouseEvent_delete p1 =   c_mouseEvent_delete p1

foreign import ccall "OISMouse.h OIS_MouseListener_delete" c_mouseListener_delete :: MouseListener -> IO ()
mouseListener_delete :: MouseListener -> IO ()
mouseListener_delete p1 =   c_mouseListener_delete p1

foreign import ccall "OISMouse.h OIS_MouseListener_mouseMoved" c_mouseListener_mouseMoved :: MouseListener -> MouseEvent -> IO CBool
mouseListener_mouseMoved :: MouseListener -> MouseEvent -> IO Bool
mouseListener_mouseMoved p1 p2 =  liftM toBool $  c_mouseListener_mouseMoved p1 p2

foreign import ccall "OISMouse.h OIS_MouseListener_mousePressed" c_mouseListener_mousePressed :: MouseListener -> MouseEvent -> CInt -> IO CBool
mouseListener_mousePressed :: MouseListener -> MouseEvent -> MouseButtonID -> IO Bool
mouseListener_mousePressed p1 p2 p3 =  liftM toBool $  c_mouseListener_mousePressed p1 p2 (mouseButtonIDToCInt p3)

foreign import ccall "OISMouse.h OIS_MouseListener_mouseReleased" c_mouseListener_mouseReleased :: MouseListener -> MouseEvent -> CInt -> IO CBool
mouseListener_mouseReleased :: MouseListener -> MouseEvent -> MouseButtonID -> IO Bool
mouseListener_mouseReleased p1 p2 p3 =  liftM toBool $  c_mouseListener_mouseReleased p1 p2 (mouseButtonIDToCInt p3)

foreign import ccall "OISMouse.h OIS_Mouse_delete" c_mouse_delete :: Mouse -> IO ()
mouse_delete :: Mouse -> IO ()
mouse_delete p1 =   c_mouse_delete p1

foreign import ccall "OISMouse.h OIS_Mouse_setEventCallback" c_mouse_setEventCallback :: Mouse -> MouseListener -> IO ()
mouse_setEventCallback :: Mouse -> MouseListener -> IO ()
mouse_setEventCallback p1 p2 =   c_mouse_setEventCallback p1 p2

foreign import ccall "OISMouse.h OIS_Mouse_getEventCallback" c_mouse_getEventCallback :: Mouse -> IO MouseListener
mouse_getEventCallback :: Mouse -> IO MouseListener
mouse_getEventCallback p1 =   c_mouse_getEventCallback p1

