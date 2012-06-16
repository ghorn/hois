{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISInputManager(
inputManager_getVersionNumber, 
inputManager_createInputSystem_size_t, 
inputManager_createInputSystem, 
inputManager_destroyInputSystem, 
inputManager_getNumberOfDevices, 
inputManager_createInputObject, 
inputManager_destroyInputObject, 
inputManager_addFactoryCreator, 
inputManager_removeFactoryCreator, 
inputManager_enableAddOnFactory
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

foreign import ccall "OISInputManager.h OIS_InputManager_getVersionNumber" c_inputManager_getVersionNumber :: IO CUInt
inputManager_getVersionNumber :: IO Int
inputManager_getVersionNumber  =  liftM fromIntegral $  c_inputManager_getVersionNumber 

foreign import ccall "OISInputManager.h OIS_InputManager_createInputSystem_size_t" c_inputManager_createInputSystem_size_t :: CSize -> IO InputManager
inputManager_createInputSystem_size_t :: Int -> IO InputManager
inputManager_createInputSystem_size_t p1 =   c_inputManager_createInputSystem_size_t (fromIntegral p1)

foreign import ccall "OISInputManager.h OIS_InputManager_createInputSystem" c_inputManager_createInputSystem :: ParamList -> IO InputManager
inputManager_createInputSystem :: ParamList -> IO InputManager
inputManager_createInputSystem p1 =   c_inputManager_createInputSystem p1

foreign import ccall "OISInputManager.h OIS_InputManager_destroyInputSystem" c_inputManager_destroyInputSystem :: InputManager -> IO ()
inputManager_destroyInputSystem :: InputManager -> IO ()
inputManager_destroyInputSystem p1 =   c_inputManager_destroyInputSystem p1

foreign import ccall "OISInputManager.h OIS_InputManager_getNumberOfDevices" c_inputManager_getNumberOfDevices :: InputManager -> CInt -> IO CInt
inputManager_getNumberOfDevices :: InputManager -> Type -> IO Int
inputManager_getNumberOfDevices p1 p2 =  liftM fromIntegral $  c_inputManager_getNumberOfDevices p1 (typeToCInt p2)

foreign import ccall "OISInputManager.h OIS_InputManager_createInputObject" c_inputManager_createInputObject :: InputManager -> CInt -> CBool -> (Ptr CChar) -> IO Object
inputManager_createInputObject :: InputManager -> Type -> Bool -> String -> IO Object
inputManager_createInputObject p1 p2 p3 p4 = withCString p4 $ \cp4 -> 
    c_inputManager_createInputObject p1 (typeToCInt p2) (fromBool p3) cp4

foreign import ccall "OISInputManager.h OIS_InputManager_destroyInputObject" c_inputManager_destroyInputObject :: InputManager -> Object -> IO ()
inputManager_destroyInputObject :: InputManager -> Object -> IO ()
inputManager_destroyInputObject p1 p2 =   c_inputManager_destroyInputObject p1 p2

foreign import ccall "OISInputManager.h OIS_InputManager_addFactoryCreator" c_inputManager_addFactoryCreator :: InputManager -> FactoryCreator -> IO ()
inputManager_addFactoryCreator :: InputManager -> FactoryCreator -> IO ()
inputManager_addFactoryCreator p1 p2 =   c_inputManager_addFactoryCreator p1 p2

foreign import ccall "OISInputManager.h OIS_InputManager_removeFactoryCreator" c_inputManager_removeFactoryCreator :: InputManager -> FactoryCreator -> IO ()
inputManager_removeFactoryCreator :: InputManager -> FactoryCreator -> IO ()
inputManager_removeFactoryCreator p1 p2 =   c_inputManager_removeFactoryCreator p1 p2

foreign import ccall "OISInputManager.h OIS_InputManager_enableAddOnFactory" c_inputManager_enableAddOnFactory :: InputManager -> CInt -> IO ()
inputManager_enableAddOnFactory :: InputManager -> AddOnFactories -> IO ()
inputManager_enableAddOnFactory p1 p2 =   c_inputManager_enableAddOnFactory p1 (addOnFactoriesToCInt p2)

