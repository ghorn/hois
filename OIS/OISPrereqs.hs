{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISPrereqs(
component_with_void, 
component_with, 
button_with_void, 
button_with, 
axis_with, 
vector3_with_void, 
vector3_with, 
component_delete, 
button_delete, 
axis_delete, 
vector3_delete, 
component_new_void, 
component_new, 
button_new_void, 
button_new, 
axis_new, 
axis_clear, 
vector3_new_void, 
vector3_new, 
vector3_clear
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

component_with_void :: (Component -> IO a) -> IO a
component_with_void  f = do
    obj <- component_new_void 
    res <- f obj
    component_delete obj
    return res

component_with :: ComponentType -> (Component -> IO a) -> IO a
component_with p1 f = do
    obj <- component_new p1
    res <- f obj
    component_delete obj
    return res

button_with_void :: (Button -> IO a) -> IO a
button_with_void  f = do
    obj <- button_new_void 
    res <- f obj
    button_delete obj
    return res

button_with :: Bool -> (Button -> IO a) -> IO a
button_with p1 f = do
    obj <- button_new p1
    res <- f obj
    button_delete obj
    return res

axis_with :: (Axis -> IO a) -> IO a
axis_with  f = do
    obj <- axis_new 
    res <- f obj
    axis_delete obj
    return res

vector3_with_void :: (Vector3 -> IO a) -> IO a
vector3_with_void  f = do
    obj <- vector3_new_void 
    res <- f obj
    vector3_delete obj
    return res

vector3_with :: Float -> Float -> Float -> (Vector3 -> IO a) -> IO a
vector3_with p1 p2 p3 f = do
    obj <- vector3_new p1 p2 p3
    res <- f obj
    vector3_delete obj
    return res

foreign import ccall "OISPrereqs.h OIS_Component_delete" c_component_delete :: Component -> IO ()
component_delete :: Component -> IO ()
component_delete p1 =   c_component_delete p1

foreign import ccall "OISPrereqs.h OIS_Button_delete" c_button_delete :: Button -> IO ()
button_delete :: Button -> IO ()
button_delete p1 =   c_button_delete p1

foreign import ccall "OISPrereqs.h OIS_Axis_delete" c_axis_delete :: Axis -> IO ()
axis_delete :: Axis -> IO ()
axis_delete p1 =   c_axis_delete p1

foreign import ccall "OISPrereqs.h OIS_Vector3_delete" c_vector3_delete :: Vector3 -> IO ()
vector3_delete :: Vector3 -> IO ()
vector3_delete p1 =   c_vector3_delete p1

foreign import ccall "OISPrereqs.h OIS_Component_new_void" c_component_new_void :: IO Component
component_new_void :: IO Component
component_new_void  =   c_component_new_void 

foreign import ccall "OISPrereqs.h OIS_Component_new" c_component_new :: CInt -> IO Component
component_new :: ComponentType -> IO Component
component_new p1 =   c_component_new (componentTypeToCInt p1)

foreign import ccall "OISPrereqs.h OIS_Button_new_void" c_button_new_void :: IO Button
button_new_void :: IO Button
button_new_void  =   c_button_new_void 

foreign import ccall "OISPrereqs.h OIS_Button_new" c_button_new :: CBool -> IO Button
button_new :: Bool -> IO Button
button_new p1 =   c_button_new (fromBool p1)

foreign import ccall "OISPrereqs.h OIS_Axis_new" c_axis_new :: IO Axis
axis_new :: IO Axis
axis_new  =   c_axis_new 

foreign import ccall "OISPrereqs.h OIS_Axis_clear" c_axis_clear :: Axis -> IO ()
axis_clear :: Axis -> IO ()
axis_clear p1 =   c_axis_clear p1

foreign import ccall "OISPrereqs.h OIS_Vector3_new_void" c_vector3_new_void :: IO Vector3
vector3_new_void :: IO Vector3
vector3_new_void  =   c_vector3_new_void 

foreign import ccall "OISPrereqs.h OIS_Vector3_new" c_vector3_new :: CFloat -> CFloat -> CFloat -> IO Vector3
vector3_new :: Float -> Float -> Float -> IO Vector3
vector3_new p1 p2 p3 =   c_vector3_new (realToFrac p1) (realToFrac p2) (realToFrac p3)

foreign import ccall "OISPrereqs.h OIS_Vector3_clear" c_vector3_clear :: Vector3 -> IO ()
vector3_clear :: Vector3 -> IO ()
vector3_clear p1 =   c_vector3_clear p1

