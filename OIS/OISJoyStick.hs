{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISJoyStick(
pov_with, 
slider_with, 
joyStickState_with, 
joyStickEvent_with, 
pov_delete, 
slider_delete, 
joyStickState_delete, 
pov_new, 
slider_new, 
joyStickState_new, 
joyStickState_clear, 
joyStickEvent_new, 
joyStickEvent_delete, 
joyStickListener_delete, 
joyStickListener_buttonPressed, 
joyStickListener_buttonReleased, 
joyStickListener_axisMoved, 
joyStickListener_povMoved, 
joyStickListener_vector3Moved, 
joyStick_delete, 
joyStick_getNumberOfComponents, 
joyStick_setVector3Sensitivity, 
joyStick_getVector3Sensitivity, 
joyStick_setEventCallback, 
joyStick_getEventCallback
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

pov_with :: (Pov -> IO a) -> IO a
pov_with  f = do
    obj <- pov_new 
    res <- f obj
    pov_delete obj
    return res

slider_with :: (Slider -> IO a) -> IO a
slider_with  f = do
    obj <- slider_new 
    res <- f obj
    slider_delete obj
    return res

joyStickState_with :: (JoyStickState -> IO a) -> IO a
joyStickState_with  f = do
    obj <- joyStickState_new 
    res <- f obj
    joyStickState_delete obj
    return res

joyStickEvent_with :: Object -> JoyStickState -> (JoyStickEvent -> IO a) -> IO a
joyStickEvent_with p1 p2 f = do
    obj <- joyStickEvent_new p1 p2
    res <- f obj
    joyStickEvent_delete obj
    return res

foreign import ccall "OISJoyStick.h OIS_Pov_delete" c_pov_delete :: Pov -> IO ()
pov_delete :: Pov -> IO ()
pov_delete p1 =   c_pov_delete p1

foreign import ccall "OISJoyStick.h OIS_Slider_delete" c_slider_delete :: Slider -> IO ()
slider_delete :: Slider -> IO ()
slider_delete p1 =   c_slider_delete p1

foreign import ccall "OISJoyStick.h OIS_JoyStickState_delete" c_joyStickState_delete :: JoyStickState -> IO ()
joyStickState_delete :: JoyStickState -> IO ()
joyStickState_delete p1 =   c_joyStickState_delete p1

foreign import ccall "OISJoyStick.h OIS_Pov_new" c_pov_new :: IO Pov
pov_new :: IO Pov
pov_new  =   c_pov_new 

foreign import ccall "OISJoyStick.h OIS_Slider_new" c_slider_new :: IO Slider
slider_new :: IO Slider
slider_new  =   c_slider_new 

foreign import ccall "OISJoyStick.h OIS_JoyStickState_new" c_joyStickState_new :: IO JoyStickState
joyStickState_new :: IO JoyStickState
joyStickState_new  =   c_joyStickState_new 

foreign import ccall "OISJoyStick.h OIS_JoyStickState_clear" c_joyStickState_clear :: JoyStickState -> IO ()
joyStickState_clear :: JoyStickState -> IO ()
joyStickState_clear p1 =   c_joyStickState_clear p1

foreign import ccall "OISJoyStick.h OIS_JoyStickEvent_new" c_joyStickEvent_new :: Object -> JoyStickState -> IO JoyStickEvent
joyStickEvent_new :: Object -> JoyStickState -> IO JoyStickEvent
joyStickEvent_new p1 p2 =   c_joyStickEvent_new p1 p2

foreign import ccall "OISJoyStick.h OIS_JoyStickEvent_delete" c_joyStickEvent_delete :: JoyStickEvent -> IO ()
joyStickEvent_delete :: JoyStickEvent -> IO ()
joyStickEvent_delete p1 =   c_joyStickEvent_delete p1

foreign import ccall "OISJoyStick.h OIS_JoyStickListener_delete" c_joyStickListener_delete :: JoyStickListener -> IO ()
joyStickListener_delete :: JoyStickListener -> IO ()
joyStickListener_delete p1 =   c_joyStickListener_delete p1

foreign import ccall "OISJoyStick.h OIS_JoyStickListener_buttonPressed" c_joyStickListener_buttonPressed :: JoyStickListener -> JoyStickEvent -> CInt -> IO CBool
joyStickListener_buttonPressed :: JoyStickListener -> JoyStickEvent -> Int -> IO Bool
joyStickListener_buttonPressed p1 p2 p3 =  liftM toBool $  c_joyStickListener_buttonPressed p1 p2 (fromIntegral p3)

foreign import ccall "OISJoyStick.h OIS_JoyStickListener_buttonReleased" c_joyStickListener_buttonReleased :: JoyStickListener -> JoyStickEvent -> CInt -> IO CBool
joyStickListener_buttonReleased :: JoyStickListener -> JoyStickEvent -> Int -> IO Bool
joyStickListener_buttonReleased p1 p2 p3 =  liftM toBool $  c_joyStickListener_buttonReleased p1 p2 (fromIntegral p3)

foreign import ccall "OISJoyStick.h OIS_JoyStickListener_axisMoved" c_joyStickListener_axisMoved :: JoyStickListener -> JoyStickEvent -> CInt -> IO CBool
joyStickListener_axisMoved :: JoyStickListener -> JoyStickEvent -> Int -> IO Bool
joyStickListener_axisMoved p1 p2 p3 =  liftM toBool $  c_joyStickListener_axisMoved p1 p2 (fromIntegral p3)

foreign import ccall "OISJoyStick.h OIS_JoyStickListener_povMoved" c_joyStickListener_povMoved :: JoyStickListener -> JoyStickEvent -> CInt -> IO CBool
joyStickListener_povMoved :: JoyStickListener -> JoyStickEvent -> Int -> IO Bool
joyStickListener_povMoved p1 p2 p3 =  liftM toBool $  c_joyStickListener_povMoved p1 p2 (fromIntegral p3)

foreign import ccall "OISJoyStick.h OIS_JoyStickListener_vector3Moved" c_joyStickListener_vector3Moved :: JoyStickListener -> JoyStickEvent -> CInt -> IO CBool
joyStickListener_vector3Moved :: JoyStickListener -> JoyStickEvent -> Int -> IO Bool
joyStickListener_vector3Moved p1 p2 p3 =  liftM toBool $  c_joyStickListener_vector3Moved p1 p2 (fromIntegral p3)

foreign import ccall "OISJoyStick.h OIS_JoyStick_delete" c_joyStick_delete :: JoyStick -> IO ()
joyStick_delete :: JoyStick -> IO ()
joyStick_delete p1 =   c_joyStick_delete p1

foreign import ccall "OISJoyStick.h OIS_JoyStick_getNumberOfComponents" c_joyStick_getNumberOfComponents :: JoyStick -> CInt -> IO CInt
joyStick_getNumberOfComponents :: JoyStick -> ComponentType -> IO Int
joyStick_getNumberOfComponents p1 p2 =  liftM fromIntegral $  c_joyStick_getNumberOfComponents p1 (componentTypeToCInt p2)

foreign import ccall "OISJoyStick.h OIS_JoyStick_setVector3Sensitivity" c_joyStick_setVector3Sensitivity :: JoyStick -> CFloat -> IO ()
joyStick_setVector3Sensitivity :: JoyStick -> Float -> IO ()
joyStick_setVector3Sensitivity p1 p2 =   c_joyStick_setVector3Sensitivity p1 (realToFrac p2)

foreign import ccall "OISJoyStick.h OIS_JoyStick_getVector3Sensitivity" c_joyStick_getVector3Sensitivity :: JoyStick -> IO CFloat
joyStick_getVector3Sensitivity :: JoyStick -> IO Float
joyStick_getVector3Sensitivity p1 =  liftM realToFrac $  c_joyStick_getVector3Sensitivity p1

foreign import ccall "OISJoyStick.h OIS_JoyStick_setEventCallback" c_joyStick_setEventCallback :: JoyStick -> JoyStickListener -> IO ()
joyStick_setEventCallback :: JoyStick -> JoyStickListener -> IO ()
joyStick_setEventCallback p1 p2 =   c_joyStick_setEventCallback p1 p2

foreign import ccall "OISJoyStick.h OIS_JoyStick_getEventCallback" c_joyStick_getEventCallback :: JoyStick -> IO JoyStickListener
joyStick_getEventCallback :: JoyStick -> IO JoyStickListener
joyStick_getEventCallback p1 =   c_joyStick_getEventCallback p1

