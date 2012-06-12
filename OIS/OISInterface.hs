{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISInterface(
interface_with, 
interface_new, 
interface_delete
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

interface_with :: (Interface -> IO a) -> IO a
interface_with  f = do
    obj <- interface_new 
    res <- f obj
    interface_delete obj
    return res

foreign import ccall "OISInterface.h OIS_Interface_new" c_interface_new :: IO Interface
interface_new :: IO Interface
interface_new  =   c_interface_new 

foreign import ccall "OISInterface.h OIS_Interface_delete" c_interface_delete :: Interface -> IO ()
interface_delete :: Interface -> IO ()
interface_delete p1 =   c_interface_delete p1

