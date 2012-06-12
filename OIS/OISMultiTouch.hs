{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISMultiTouch(
multiTouchState_with, 
multiTouchEvent_with, 
multiTouchState_delete, 
multiTouchState_new, 
multiTouchState_touchIsType, 
multiTouchState_clear, 
multiTouchEvent_new, 
multiTouchEvent_delete, 
multiTouchListener_delete, 
multiTouchListener_touchMoved, 
multiTouchListener_touchPressed, 
multiTouchListener_touchReleased, 
multiTouchListener_touchCancelled, 
multiTouch_delete, 
multiTouch_setEventCallback, 
multiTouch_getEventCallback, 
multiTouch_clearStates
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

multiTouchState_with :: (MultiTouchState -> IO a) -> IO a
multiTouchState_with  f = do
    obj <- multiTouchState_new 
    res <- f obj
    multiTouchState_delete obj
    return res

multiTouchEvent_with :: Object -> MultiTouchState -> (MultiTouchEvent -> IO a) -> IO a
multiTouchEvent_with p1 p2 f = do
    obj <- multiTouchEvent_new p1 p2
    res <- f obj
    multiTouchEvent_delete obj
    return res

foreign import ccall "OISMultiTouch.h OIS_MultiTouchState_delete" c_multiTouchState_delete :: MultiTouchState -> IO ()
multiTouchState_delete :: MultiTouchState -> IO ()
multiTouchState_delete p1 =   c_multiTouchState_delete p1

foreign import ccall "OISMultiTouch.h OIS_MultiTouchState_new" c_multiTouchState_new :: IO MultiTouchState
multiTouchState_new :: IO MultiTouchState
multiTouchState_new  =   c_multiTouchState_new 

foreign import ccall "OISMultiTouch.h OIS_MultiTouchState_touchIsType" c_multiTouchState_touchIsType :: MultiTouchState -> CInt -> IO CBool
multiTouchState_touchIsType :: MultiTouchState -> MultiTypeEventTypeID -> IO Bool
multiTouchState_touchIsType p1 p2 =  liftM toBool $  c_multiTouchState_touchIsType p1 (multiTypeEventTypeIDToCInt p2)

foreign import ccall "OISMultiTouch.h OIS_MultiTouchState_clear" c_multiTouchState_clear :: MultiTouchState -> IO ()
multiTouchState_clear :: MultiTouchState -> IO ()
multiTouchState_clear p1 =   c_multiTouchState_clear p1

foreign import ccall "OISMultiTouch.h OIS_MultiTouchEvent_new" c_multiTouchEvent_new :: Object -> MultiTouchState -> IO MultiTouchEvent
multiTouchEvent_new :: Object -> MultiTouchState -> IO MultiTouchEvent
multiTouchEvent_new p1 p2 =   c_multiTouchEvent_new p1 p2

foreign import ccall "OISMultiTouch.h OIS_MultiTouchEvent_delete" c_multiTouchEvent_delete :: MultiTouchEvent -> IO ()
multiTouchEvent_delete :: MultiTouchEvent -> IO ()
multiTouchEvent_delete p1 =   c_multiTouchEvent_delete p1

foreign import ccall "OISMultiTouch.h OIS_MultiTouchListener_delete" c_multiTouchListener_delete :: MultiTouchListener -> IO ()
multiTouchListener_delete :: MultiTouchListener -> IO ()
multiTouchListener_delete p1 =   c_multiTouchListener_delete p1

foreign import ccall "OISMultiTouch.h OIS_MultiTouchListener_touchMoved" c_multiTouchListener_touchMoved :: MultiTouchListener -> MultiTouchEvent -> IO CBool
multiTouchListener_touchMoved :: MultiTouchListener -> MultiTouchEvent -> IO Bool
multiTouchListener_touchMoved p1 p2 =  liftM toBool $  c_multiTouchListener_touchMoved p1 p2

foreign import ccall "OISMultiTouch.h OIS_MultiTouchListener_touchPressed" c_multiTouchListener_touchPressed :: MultiTouchListener -> MultiTouchEvent -> IO CBool
multiTouchListener_touchPressed :: MultiTouchListener -> MultiTouchEvent -> IO Bool
multiTouchListener_touchPressed p1 p2 =  liftM toBool $  c_multiTouchListener_touchPressed p1 p2

foreign import ccall "OISMultiTouch.h OIS_MultiTouchListener_touchReleased" c_multiTouchListener_touchReleased :: MultiTouchListener -> MultiTouchEvent -> IO CBool
multiTouchListener_touchReleased :: MultiTouchListener -> MultiTouchEvent -> IO Bool
multiTouchListener_touchReleased p1 p2 =  liftM toBool $  c_multiTouchListener_touchReleased p1 p2

foreign import ccall "OISMultiTouch.h OIS_MultiTouchListener_touchCancelled" c_multiTouchListener_touchCancelled :: MultiTouchListener -> MultiTouchEvent -> IO CBool
multiTouchListener_touchCancelled :: MultiTouchListener -> MultiTouchEvent -> IO Bool
multiTouchListener_touchCancelled p1 p2 =  liftM toBool $  c_multiTouchListener_touchCancelled p1 p2

foreign import ccall "OISMultiTouch.h OIS_MultiTouch_delete" c_multiTouch_delete :: MultiTouch -> IO ()
multiTouch_delete :: MultiTouch -> IO ()
multiTouch_delete p1 =   c_multiTouch_delete p1

foreign import ccall "OISMultiTouch.h OIS_MultiTouch_setEventCallback" c_multiTouch_setEventCallback :: MultiTouch -> MultiTouchListener -> IO ()
multiTouch_setEventCallback :: MultiTouch -> MultiTouchListener -> IO ()
multiTouch_setEventCallback p1 p2 =   c_multiTouch_setEventCallback p1 p2

foreign import ccall "OISMultiTouch.h OIS_MultiTouch_getEventCallback" c_multiTouch_getEventCallback :: MultiTouch -> IO MultiTouchListener
multiTouch_getEventCallback :: MultiTouch -> IO MultiTouchListener
multiTouch_getEventCallback p1 =   c_multiTouch_getEventCallback p1

foreign import ccall "OISMultiTouch.h OIS_MultiTouch_clearStates" c_multiTouch_clearStates :: MultiTouch -> IO ()
multiTouch_clearStates :: MultiTouch -> IO ()
multiTouch_clearStates p1 =   c_multiTouch_clearStates p1

