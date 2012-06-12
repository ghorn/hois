module OIS.Types
where

import Foreign
import Foreign.C.String
import Foreign.C.Types

type CBool = CChar -- correct?

newtype Axis = Axis (Ptr Axis) -- nullary data type
newtype Button = Button (Ptr Button) -- nullary data type
newtype Component = Component (Ptr Component) -- nullary data type

data ComponentType = OIS_Unknown | OIS_Button | OIS_Axis | OIS_Slider | OIS_POV | OIS_Vector3

componentTypeToCInt :: ComponentType -> CInt
componentTypeToCInt OIS_Unknown = 0
componentTypeToCInt OIS_Button = 1
componentTypeToCInt OIS_Axis = 2
componentTypeToCInt OIS_Slider = 3
componentTypeToCInt OIS_POV = 4
componentTypeToCInt OIS_Vector3 = 5

cintToComponentType :: CInt -> ComponentType
cintToComponentType 0 = OIS_Unknown
cintToComponentType 1 = OIS_Button
cintToComponentType 2 = OIS_Axis
cintToComponentType 3 = OIS_Slider
cintToComponentType 4 = OIS_POV
cintToComponentType 5 = OIS_Vector3
cintToComponentType n = error $ "cintToComponentType: can not convert integer '" ++ show n ++ "' to ComponentType"

newtype EventArg = EventArg (Ptr EventArg) -- nullary data type
newtype FactoryCreator = FactoryCreator (Ptr FactoryCreator) -- nullary data type
newtype InputManager = InputManager (Ptr InputManager) -- nullary data type

data AddOnFactories = AddOn_All | AddOn_LIRC | AddOn_WiiMote

addOnFactoriesToCInt :: AddOnFactories -> CInt
addOnFactoriesToCInt AddOn_All = 0
addOnFactoriesToCInt AddOn_LIRC = 1
addOnFactoriesToCInt AddOn_WiiMote = 2

cintToAddOnFactories :: CInt -> AddOnFactories
cintToAddOnFactories 0 = AddOn_All
cintToAddOnFactories 1 = AddOn_LIRC
cintToAddOnFactories 2 = AddOn_WiiMote
cintToAddOnFactories n = error $ "cintToAddOnFactories: can not convert integer '" ++ show n ++ "' to AddOnFactories"

newtype Interface = Interface (Ptr Interface) -- nullary data type

data IType = ForceFeedback | Reserved

iTypeToCInt :: IType -> CInt
iTypeToCInt ForceFeedback = 0
iTypeToCInt Reserved = 1

cintToIType :: CInt -> IType
cintToIType 0 = ForceFeedback
cintToIType 1 = Reserved
cintToIType n = error $ "cintToIType: can not convert integer '" ++ show n ++ "' to IType"

newtype JoyStick = JoyStick (Ptr JoyStick) -- nullary data type
newtype JoyStickEvent = JoyStickEvent (Ptr JoyStickEvent) -- nullary data type
newtype JoyStickListener = JoyStickListener (Ptr JoyStickListener) -- nullary data type
newtype JoyStickState = JoyStickState (Ptr JoyStickState) -- nullary data type
newtype Mouse = Mouse (Ptr Mouse) -- nullary data type

data MouseButtonID = MB_Left | MB_Right | MB_Middle | MB_Button3 | MB_Button4 | MB_Button5 | MB_Button6 | MB_Button7

mouseButtonIDToCInt :: MouseButtonID -> CInt
mouseButtonIDToCInt MB_Left = 0
mouseButtonIDToCInt MB_Right = 1
mouseButtonIDToCInt MB_Middle = 2
mouseButtonIDToCInt MB_Button3 = 3
mouseButtonIDToCInt MB_Button4 = 4
mouseButtonIDToCInt MB_Button5 = 5
mouseButtonIDToCInt MB_Button6 = 6
mouseButtonIDToCInt MB_Button7 = 7

cintToMouseButtonID :: CInt -> MouseButtonID
cintToMouseButtonID 0 = MB_Left
cintToMouseButtonID 1 = MB_Right
cintToMouseButtonID 2 = MB_Middle
cintToMouseButtonID 3 = MB_Button3
cintToMouseButtonID 4 = MB_Button4
cintToMouseButtonID 5 = MB_Button5
cintToMouseButtonID 6 = MB_Button6
cintToMouseButtonID 7 = MB_Button7
cintToMouseButtonID n = error $ "cintToMouseButtonID: can not convert integer '" ++ show n ++ "' to MouseButtonID"

newtype MouseEvent = MouseEvent (Ptr MouseEvent) -- nullary data type
newtype MouseListener = MouseListener (Ptr MouseListener) -- nullary data type
newtype MouseState = MouseState (Ptr MouseState) -- nullary data type
newtype MultiTouch = MultiTouch (Ptr MultiTouch) -- nullary data type
newtype MultiTouchEvent = MultiTouchEvent (Ptr MultiTouchEvent) -- nullary data type
newtype MultiTouchListener = MultiTouchListener (Ptr MultiTouchListener) -- nullary data type
newtype MultiTouchState = MultiTouchState (Ptr MultiTouchState) -- nullary data type

data MultiTypeEventTypeID = MT_None | MT_Pressed | MT_Released | MT_Moved | MT_Cancelled

multiTypeEventTypeIDToCInt :: MultiTypeEventTypeID -> CInt
multiTypeEventTypeIDToCInt MT_None = 0
multiTypeEventTypeIDToCInt MT_Pressed = 1
multiTypeEventTypeIDToCInt MT_Released = 2
multiTypeEventTypeIDToCInt MT_Moved = 3
multiTypeEventTypeIDToCInt MT_Cancelled = 4

cintToMultiTypeEventTypeID :: CInt -> MultiTypeEventTypeID
cintToMultiTypeEventTypeID 0 = MT_None
cintToMultiTypeEventTypeID 1 = MT_Pressed
cintToMultiTypeEventTypeID 2 = MT_Released
cintToMultiTypeEventTypeID 3 = MT_Moved
cintToMultiTypeEventTypeID 4 = MT_Cancelled
cintToMultiTypeEventTypeID n = error $ "cintToMultiTypeEventTypeID: can not convert integer '" ++ show n ++ "' to MultiTypeEventTypeID"

newtype Object = Object (Ptr Object) -- nullary data type
newtype ParamList = ParamList (Ptr ParamList) -- nullary data type
newtype Pov = Pov (Ptr Pov) -- nullary data type
newtype Slider = Slider (Ptr Slider) -- nullary data type

data Type = OISUnknown | OISKeyboard | OISMouse | OISJoyStick | OISTablet | OISMultiTouch

typeToCInt :: Type -> CInt
typeToCInt OISUnknown = 0
typeToCInt OISKeyboard = 1
typeToCInt OISMouse = 2
typeToCInt OISJoyStick = 3
typeToCInt OISTablet = 4
typeToCInt OISMultiTouch = 5

cintToType :: CInt -> Type
cintToType 0 = OISUnknown
cintToType 1 = OISKeyboard
cintToType 2 = OISMouse
cintToType 3 = OISJoyStick
cintToType 4 = OISTablet
cintToType 5 = OISMultiTouch
cintToType n = error $ "cintToType: can not convert integer '" ++ show n ++ "' to Type"

newtype Vector3 = Vector3 (Ptr Vector3) -- nullary data type
newtype Std__string = Std__string (Ptr Std__string) -- nullary data type
newtype Void = Void (Ptr Void) -- nullary data type

