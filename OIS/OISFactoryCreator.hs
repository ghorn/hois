{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISFactoryCreator(
factoryCreator_delete, 
factoryCreator_totalDevices, 
factoryCreator_freeDevices, 
factoryCreator_vendorExist, 
factoryCreator_createObject, 
factoryCreator_destroyObject
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

foreign import ccall "OISFactoryCreator.h OIS_FactoryCreator_delete" c_factoryCreator_delete :: FactoryCreator -> IO ()
factoryCreator_delete :: FactoryCreator -> IO ()
factoryCreator_delete p1 =   c_factoryCreator_delete p1

foreign import ccall "OISFactoryCreator.h OIS_FactoryCreator_totalDevices" c_factoryCreator_totalDevices :: FactoryCreator -> CInt -> IO CInt
factoryCreator_totalDevices :: FactoryCreator -> Type -> IO Int
factoryCreator_totalDevices p1 p2 =  liftM fromIntegral $  c_factoryCreator_totalDevices p1 (typeToCInt p2)

foreign import ccall "OISFactoryCreator.h OIS_FactoryCreator_freeDevices" c_factoryCreator_freeDevices :: FactoryCreator -> CInt -> IO CInt
factoryCreator_freeDevices :: FactoryCreator -> Type -> IO Int
factoryCreator_freeDevices p1 p2 =  liftM fromIntegral $  c_factoryCreator_freeDevices p1 (typeToCInt p2)

foreign import ccall "OISFactoryCreator.h OIS_FactoryCreator_vendorExist" c_factoryCreator_vendorExist :: FactoryCreator -> CInt -> Std__string -> IO CBool
factoryCreator_vendorExist :: FactoryCreator -> Type -> Std__string -> IO Bool
factoryCreator_vendorExist p1 p2 p3 =  liftM toBool $  c_factoryCreator_vendorExist p1 (typeToCInt p2) p3

foreign import ccall "OISFactoryCreator.h OIS_FactoryCreator_createObject" c_factoryCreator_createObject :: FactoryCreator -> InputManager -> CInt -> CBool -> Std__string -> IO Object
factoryCreator_createObject :: FactoryCreator -> InputManager -> Type -> Bool -> Std__string -> IO Object
factoryCreator_createObject p1 p2 p3 p4 p5 =   c_factoryCreator_createObject p1 p2 (typeToCInt p3) (fromBool p4) p5

foreign import ccall "OISFactoryCreator.h OIS_FactoryCreator_destroyObject" c_factoryCreator_destroyObject :: FactoryCreator -> Object -> IO ()
factoryCreator_destroyObject :: FactoryCreator -> Object -> IO ()
factoryCreator_destroyObject p1 p2 =   c_factoryCreator_destroyObject p1 p2

