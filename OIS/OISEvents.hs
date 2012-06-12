{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISEvents(
eventArg_with, 
eventArg_new, 
eventArg_delete
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

eventArg_with :: Object -> (EventArg -> IO a) -> IO a
eventArg_with p1 f = do
    obj <- eventArg_new p1
    res <- f obj
    eventArg_delete obj
    return res

foreign import ccall "OISEvents.h OIS_EventArg_new" c_eventArg_new :: Object -> IO EventArg
eventArg_new :: Object -> IO EventArg
eventArg_new p1 =   c_eventArg_new p1

foreign import ccall "OISEvents.h OIS_EventArg_delete" c_eventArg_delete :: EventArg -> IO ()
eventArg_delete :: EventArg -> IO ()
eventArg_delete p1 =   c_eventArg_delete p1

