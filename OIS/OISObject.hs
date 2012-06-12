{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISObject(
object_delete, 
object_type, 
object_buffered, 
object_getCreator, 
object_setBuffered, 
object_capture, 
object_getID, 
object_queryInterface, 
object__initialize
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

foreign import ccall "OISObject.h OIS_Object_delete" c_object_delete :: Object -> IO ()
object_delete :: Object -> IO ()
object_delete p1 =   c_object_delete p1

foreign import ccall "OISObject.h OIS_Object_type" c_object_type :: Object -> IO CInt
object_type :: Object -> IO Type
object_type p1 =  liftM cintToType $  c_object_type p1

foreign import ccall "OISObject.h OIS_Object_buffered" c_object_buffered :: Object -> IO CBool
object_buffered :: Object -> IO Bool
object_buffered p1 =  liftM toBool $  c_object_buffered p1

foreign import ccall "OISObject.h OIS_Object_getCreator" c_object_getCreator :: Object -> IO InputManager
object_getCreator :: Object -> IO InputManager
object_getCreator p1 =   c_object_getCreator p1

foreign import ccall "OISObject.h OIS_Object_setBuffered" c_object_setBuffered :: Object -> CBool -> IO ()
object_setBuffered :: Object -> Bool -> IO ()
object_setBuffered p1 p2 =   c_object_setBuffered p1 (fromBool p2)

foreign import ccall "OISObject.h OIS_Object_capture" c_object_capture :: Object -> IO ()
object_capture :: Object -> IO ()
object_capture p1 =   c_object_capture p1

foreign import ccall "OISObject.h OIS_Object_getID" c_object_getID :: Object -> IO CInt
object_getID :: Object -> IO Int
object_getID p1 =  liftM fromIntegral $  c_object_getID p1

foreign import ccall "OISObject.h OIS_Object_queryInterface" c_object_queryInterface :: Object -> CInt -> IO Interface
object_queryInterface :: Object -> IType -> IO Interface
object_queryInterface p1 p2 =   c_object_queryInterface p1 (iTypeToCInt p2)

foreign import ccall "OISObject.h OIS_Object__initialize" c_object__initialize :: Object -> IO ()
object__initialize :: Object -> IO ()
object__initialize p1 =   c_object__initialize p1

