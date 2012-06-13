{-# LANGUAGE ForeignFunctionInterface #-}
module OIS.OISKeyboard(
keyEvent_with, 
keyEvent_new, 
keyEvent_delete, 
keyListener_delete, 
keyListener_keyPressed, 
keyListener_keyReleased, 
keyboard_delete, 
keyboard_isKeyDown, 
keyboard_setEventCallback, 
keyboard_getEventCallback, 
keyboard_setTextTranslation, 
keyboard_getTextTranslation, 
keyboard_isModifierDown
)

where

import OIS.Types
import Control.Monad

import Foreign
import Foreign.C.String
import Foreign.C.Types

keyEvent_with :: Object -> KeyCode -> Int -> (KeyEvent -> IO a) -> IO a
keyEvent_with p1 p2 p3 f = do
    obj <- keyEvent_new p1 p2 p3
    res <- f obj
    keyEvent_delete obj
    return res

foreign import ccall "OISKeyboard.h OIS_KeyEvent_new" c_keyEvent_new :: Object -> CInt -> CUInt -> IO KeyEvent
keyEvent_new :: Object -> KeyCode -> Int -> IO KeyEvent
keyEvent_new p1 p2 p3 =   c_keyEvent_new p1 (keyCodeToCInt p2) (fromIntegral p3)

foreign import ccall "OISKeyboard.h OIS_KeyEvent_delete" c_keyEvent_delete :: KeyEvent -> IO ()
keyEvent_delete :: KeyEvent -> IO ()
keyEvent_delete p1 =   c_keyEvent_delete p1

foreign import ccall "OISKeyboard.h OIS_KeyListener_delete" c_keyListener_delete :: KeyListener -> IO ()
keyListener_delete :: KeyListener -> IO ()
keyListener_delete p1 =   c_keyListener_delete p1

foreign import ccall "OISKeyboard.h OIS_KeyListener_keyPressed" c_keyListener_keyPressed :: KeyListener -> KeyEvent -> IO CBool
keyListener_keyPressed :: KeyListener -> KeyEvent -> IO Bool
keyListener_keyPressed p1 p2 =  liftM toBool $  c_keyListener_keyPressed p1 p2

foreign import ccall "OISKeyboard.h OIS_KeyListener_keyReleased" c_keyListener_keyReleased :: KeyListener -> KeyEvent -> IO CBool
keyListener_keyReleased :: KeyListener -> KeyEvent -> IO Bool
keyListener_keyReleased p1 p2 =  liftM toBool $  c_keyListener_keyReleased p1 p2

foreign import ccall "OISKeyboard.h OIS_Keyboard_delete" c_keyboard_delete :: Keyboard -> IO ()
keyboard_delete :: Keyboard -> IO ()
keyboard_delete p1 =   c_keyboard_delete p1

foreign import ccall "OISKeyboard.h OIS_Keyboard_isKeyDown" c_keyboard_isKeyDown :: Keyboard -> CInt -> IO CBool
keyboard_isKeyDown :: Keyboard -> KeyCode -> IO Bool
keyboard_isKeyDown p1 p2 =  liftM toBool $  c_keyboard_isKeyDown p1 (keyCodeToCInt p2)

foreign import ccall "OISKeyboard.h OIS_Keyboard_setEventCallback" c_keyboard_setEventCallback :: Keyboard -> KeyListener -> IO ()
keyboard_setEventCallback :: Keyboard -> KeyListener -> IO ()
keyboard_setEventCallback p1 p2 =   c_keyboard_setEventCallback p1 p2

foreign import ccall "OISKeyboard.h OIS_Keyboard_getEventCallback" c_keyboard_getEventCallback :: Keyboard -> IO KeyListener
keyboard_getEventCallback :: Keyboard -> IO KeyListener
keyboard_getEventCallback p1 =   c_keyboard_getEventCallback p1

foreign import ccall "OISKeyboard.h OIS_Keyboard_setTextTranslation" c_keyboard_setTextTranslation :: Keyboard -> CInt -> IO ()
keyboard_setTextTranslation :: Keyboard -> TextTranslationMode -> IO ()
keyboard_setTextTranslation p1 p2 =   c_keyboard_setTextTranslation p1 (textTranslationModeToCInt p2)

foreign import ccall "OISKeyboard.h OIS_Keyboard_getTextTranslation" c_keyboard_getTextTranslation :: Keyboard -> IO CInt
keyboard_getTextTranslation :: Keyboard -> IO TextTranslationMode
keyboard_getTextTranslation p1 =  liftM cintToTextTranslationMode $  c_keyboard_getTextTranslation p1

foreign import ccall "OISKeyboard.h OIS_Keyboard_isModifierDown" c_keyboard_isModifierDown :: Keyboard -> CInt -> IO CBool
keyboard_isModifierDown :: Keyboard -> Modifier -> IO Bool
keyboard_isModifierDown p1 p2 =  liftM toBool $  c_keyboard_isModifierDown p1 (modifierToCInt p2)

