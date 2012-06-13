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

data KeyCode = KC_UNASSIGNED | KC_ESCAPE | KC_1 | KC_2 | KC_3 | KC_4 | KC_5 | KC_6 | KC_7 | KC_8 | KC_9 | KC_0 | KC_MINUS | KC_EQUALS | KC_BACK | KC_TAB | KC_Q | KC_W | KC_E | KC_R | KC_T | KC_Y | KC_U | KC_I | KC_O | KC_P | KC_LBRACKET | KC_RBRACKET | KC_RETURN | KC_LCONTROL | KC_A | KC_S | KC_D | KC_F | KC_G | KC_H | KC_J | KC_K | KC_L | KC_SEMICOLON | KC_APOSTROPHE | KC_GRAVE | KC_LSHIFT | KC_BACKSLASH | KC_Z | KC_X | KC_C | KC_V | KC_B | KC_N | KC_M | KC_COMMA | KC_PERIOD | KC_SLASH | KC_RSHIFT | KC_MULTIPLY | KC_LMENU | KC_SPACE | KC_CAPITAL | KC_F1 | KC_F2 | KC_F3 | KC_F4 | KC_F5 | KC_F6 | KC_F7 | KC_F8 | KC_F9 | KC_F10 | KC_NUMLOCK | KC_SCROLL | KC_NUMPAD7 | KC_NUMPAD8 | KC_NUMPAD9 | KC_SUBTRACT | KC_NUMPAD4 | KC_NUMPAD5 | KC_NUMPAD6 | KC_ADD | KC_NUMPAD1 | KC_NUMPAD2 | KC_NUMPAD3 | KC_NUMPAD0 | KC_DECIMAL | KC_OEM_102 | KC_F11 | KC_F12 | KC_F13 | KC_F14 | KC_F15 | KC_KANA | KC_ABNT_C1 | KC_CONVERT | KC_NOCONVERT | KC_YEN | KC_ABNT_C2 | KC_NUMPADEQUALS | KC_PREVTRACK | KC_AT | KC_COLON | KC_UNDERLINE | KC_KANJI | KC_STOP | KC_AX | KC_UNLABELED | KC_NEXTTRACK | KC_NUMPADENTER | KC_RCONTROL | KC_MUTE | KC_CALCULATOR | KC_PLAYPAUSE | KC_MEDIASTOP | KC_VOLUMEDOWN | KC_VOLUMEUP | KC_WEBHOME | KC_NUMPADCOMMA | KC_DIVIDE | KC_SYSRQ | KC_RMENU | KC_PAUSE | KC_HOME | KC_UP | KC_PGUP | KC_LEFT | KC_RIGHT | KC_END | KC_DOWN | KC_PGDOWN | KC_INSERT | KC_DELETE | KC_LWIN | KC_RWIN | KC_APPS | KC_POWER | KC_SLEEP | KC_WAKE | KC_WEBSEARCH | KC_WEBFAVORITES | KC_WEBREFRESH | KC_WEBSTOP | KC_WEBFORWARD | KC_WEBBACK | KC_MYCOMPUTER | KC_MAIL | KC_MEDIASELECT

keyCodeToCInt :: KeyCode -> CInt
keyCodeToCInt KC_UNASSIGNED = 0
keyCodeToCInt KC_ESCAPE = 1
keyCodeToCInt KC_1 = 2
keyCodeToCInt KC_2 = 3
keyCodeToCInt KC_3 = 4
keyCodeToCInt KC_4 = 5
keyCodeToCInt KC_5 = 6
keyCodeToCInt KC_6 = 7
keyCodeToCInt KC_7 = 8
keyCodeToCInt KC_8 = 9
keyCodeToCInt KC_9 = 10
keyCodeToCInt KC_0 = 11
keyCodeToCInt KC_MINUS = 12
keyCodeToCInt KC_EQUALS = 13
keyCodeToCInt KC_BACK = 14
keyCodeToCInt KC_TAB = 15
keyCodeToCInt KC_Q = 16
keyCodeToCInt KC_W = 17
keyCodeToCInt KC_E = 18
keyCodeToCInt KC_R = 19
keyCodeToCInt KC_T = 20
keyCodeToCInt KC_Y = 21
keyCodeToCInt KC_U = 22
keyCodeToCInt KC_I = 23
keyCodeToCInt KC_O = 24
keyCodeToCInt KC_P = 25
keyCodeToCInt KC_LBRACKET = 26
keyCodeToCInt KC_RBRACKET = 27
keyCodeToCInt KC_RETURN = 28
keyCodeToCInt KC_LCONTROL = 29
keyCodeToCInt KC_A = 30
keyCodeToCInt KC_S = 31
keyCodeToCInt KC_D = 32
keyCodeToCInt KC_F = 33
keyCodeToCInt KC_G = 34
keyCodeToCInt KC_H = 35
keyCodeToCInt KC_J = 36
keyCodeToCInt KC_K = 37
keyCodeToCInt KC_L = 38
keyCodeToCInt KC_SEMICOLON = 39
keyCodeToCInt KC_APOSTROPHE = 40
keyCodeToCInt KC_GRAVE = 41
keyCodeToCInt KC_LSHIFT = 42
keyCodeToCInt KC_BACKSLASH = 43
keyCodeToCInt KC_Z = 44
keyCodeToCInt KC_X = 45
keyCodeToCInt KC_C = 46
keyCodeToCInt KC_V = 47
keyCodeToCInt KC_B = 48
keyCodeToCInt KC_N = 49
keyCodeToCInt KC_M = 50
keyCodeToCInt KC_COMMA = 51
keyCodeToCInt KC_PERIOD = 52
keyCodeToCInt KC_SLASH = 53
keyCodeToCInt KC_RSHIFT = 54
keyCodeToCInt KC_MULTIPLY = 55
keyCodeToCInt KC_LMENU = 56
keyCodeToCInt KC_SPACE = 57
keyCodeToCInt KC_CAPITAL = 58
keyCodeToCInt KC_F1 = 59
keyCodeToCInt KC_F2 = 60
keyCodeToCInt KC_F3 = 61
keyCodeToCInt KC_F4 = 62
keyCodeToCInt KC_F5 = 63
keyCodeToCInt KC_F6 = 64
keyCodeToCInt KC_F7 = 65
keyCodeToCInt KC_F8 = 66
keyCodeToCInt KC_F9 = 67
keyCodeToCInt KC_F10 = 68
keyCodeToCInt KC_NUMLOCK = 69
keyCodeToCInt KC_SCROLL = 70
keyCodeToCInt KC_NUMPAD7 = 71
keyCodeToCInt KC_NUMPAD8 = 72
keyCodeToCInt KC_NUMPAD9 = 73
keyCodeToCInt KC_SUBTRACT = 74
keyCodeToCInt KC_NUMPAD4 = 75
keyCodeToCInt KC_NUMPAD5 = 76
keyCodeToCInt KC_NUMPAD6 = 77
keyCodeToCInt KC_ADD = 78
keyCodeToCInt KC_NUMPAD1 = 79
keyCodeToCInt KC_NUMPAD2 = 80
keyCodeToCInt KC_NUMPAD3 = 81
keyCodeToCInt KC_NUMPAD0 = 82
keyCodeToCInt KC_DECIMAL = 83
keyCodeToCInt KC_OEM_102 = 86
keyCodeToCInt KC_F11 = 87
keyCodeToCInt KC_F12 = 88
keyCodeToCInt KC_F13 = 100
keyCodeToCInt KC_F14 = 101
keyCodeToCInt KC_F15 = 102
keyCodeToCInt KC_KANA = 112
keyCodeToCInt KC_ABNT_C1 = 115
keyCodeToCInt KC_CONVERT = 121
keyCodeToCInt KC_NOCONVERT = 123
keyCodeToCInt KC_YEN = 125
keyCodeToCInt KC_ABNT_C2 = 126
keyCodeToCInt KC_NUMPADEQUALS = 141
keyCodeToCInt KC_PREVTRACK = 144
keyCodeToCInt KC_AT = 145
keyCodeToCInt KC_COLON = 146
keyCodeToCInt KC_UNDERLINE = 147
keyCodeToCInt KC_KANJI = 148
keyCodeToCInt KC_STOP = 149
keyCodeToCInt KC_AX = 150
keyCodeToCInt KC_UNLABELED = 151
keyCodeToCInt KC_NEXTTRACK = 153
keyCodeToCInt KC_NUMPADENTER = 156
keyCodeToCInt KC_RCONTROL = 157
keyCodeToCInt KC_MUTE = 160
keyCodeToCInt KC_CALCULATOR = 161
keyCodeToCInt KC_PLAYPAUSE = 162
keyCodeToCInt KC_MEDIASTOP = 164
keyCodeToCInt KC_VOLUMEDOWN = 174
keyCodeToCInt KC_VOLUMEUP = 176
keyCodeToCInt KC_WEBHOME = 178
keyCodeToCInt KC_NUMPADCOMMA = 179
keyCodeToCInt KC_DIVIDE = 181
keyCodeToCInt KC_SYSRQ = 183
keyCodeToCInt KC_RMENU = 184
keyCodeToCInt KC_PAUSE = 197
keyCodeToCInt KC_HOME = 199
keyCodeToCInt KC_UP = 200
keyCodeToCInt KC_PGUP = 201
keyCodeToCInt KC_LEFT = 203
keyCodeToCInt KC_RIGHT = 205
keyCodeToCInt KC_END = 207
keyCodeToCInt KC_DOWN = 208
keyCodeToCInt KC_PGDOWN = 209
keyCodeToCInt KC_INSERT = 210
keyCodeToCInt KC_DELETE = 211
keyCodeToCInt KC_LWIN = 219
keyCodeToCInt KC_RWIN = 220
keyCodeToCInt KC_APPS = 221
keyCodeToCInt KC_POWER = 222
keyCodeToCInt KC_SLEEP = 223
keyCodeToCInt KC_WAKE = 227
keyCodeToCInt KC_WEBSEARCH = 229
keyCodeToCInt KC_WEBFAVORITES = 230
keyCodeToCInt KC_WEBREFRESH = 231
keyCodeToCInt KC_WEBSTOP = 232
keyCodeToCInt KC_WEBFORWARD = 233
keyCodeToCInt KC_WEBBACK = 234
keyCodeToCInt KC_MYCOMPUTER = 235
keyCodeToCInt KC_MAIL = 236
keyCodeToCInt KC_MEDIASELECT = 237

cintToKeyCode :: CInt -> KeyCode
cintToKeyCode 0 = KC_UNASSIGNED
cintToKeyCode 1 = KC_ESCAPE
cintToKeyCode 2 = KC_1
cintToKeyCode 3 = KC_2
cintToKeyCode 4 = KC_3
cintToKeyCode 5 = KC_4
cintToKeyCode 6 = KC_5
cintToKeyCode 7 = KC_6
cintToKeyCode 8 = KC_7
cintToKeyCode 9 = KC_8
cintToKeyCode 10 = KC_9
cintToKeyCode 11 = KC_0
cintToKeyCode 12 = KC_MINUS
cintToKeyCode 13 = KC_EQUALS
cintToKeyCode 14 = KC_BACK
cintToKeyCode 15 = KC_TAB
cintToKeyCode 16 = KC_Q
cintToKeyCode 17 = KC_W
cintToKeyCode 18 = KC_E
cintToKeyCode 19 = KC_R
cintToKeyCode 20 = KC_T
cintToKeyCode 21 = KC_Y
cintToKeyCode 22 = KC_U
cintToKeyCode 23 = KC_I
cintToKeyCode 24 = KC_O
cintToKeyCode 25 = KC_P
cintToKeyCode 26 = KC_LBRACKET
cintToKeyCode 27 = KC_RBRACKET
cintToKeyCode 28 = KC_RETURN
cintToKeyCode 29 = KC_LCONTROL
cintToKeyCode 30 = KC_A
cintToKeyCode 31 = KC_S
cintToKeyCode 32 = KC_D
cintToKeyCode 33 = KC_F
cintToKeyCode 34 = KC_G
cintToKeyCode 35 = KC_H
cintToKeyCode 36 = KC_J
cintToKeyCode 37 = KC_K
cintToKeyCode 38 = KC_L
cintToKeyCode 39 = KC_SEMICOLON
cintToKeyCode 40 = KC_APOSTROPHE
cintToKeyCode 41 = KC_GRAVE
cintToKeyCode 42 = KC_LSHIFT
cintToKeyCode 43 = KC_BACKSLASH
cintToKeyCode 44 = KC_Z
cintToKeyCode 45 = KC_X
cintToKeyCode 46 = KC_C
cintToKeyCode 47 = KC_V
cintToKeyCode 48 = KC_B
cintToKeyCode 49 = KC_N
cintToKeyCode 50 = KC_M
cintToKeyCode 51 = KC_COMMA
cintToKeyCode 52 = KC_PERIOD
cintToKeyCode 53 = KC_SLASH
cintToKeyCode 54 = KC_RSHIFT
cintToKeyCode 55 = KC_MULTIPLY
cintToKeyCode 56 = KC_LMENU
cintToKeyCode 57 = KC_SPACE
cintToKeyCode 58 = KC_CAPITAL
cintToKeyCode 59 = KC_F1
cintToKeyCode 60 = KC_F2
cintToKeyCode 61 = KC_F3
cintToKeyCode 62 = KC_F4
cintToKeyCode 63 = KC_F5
cintToKeyCode 64 = KC_F6
cintToKeyCode 65 = KC_F7
cintToKeyCode 66 = KC_F8
cintToKeyCode 67 = KC_F9
cintToKeyCode 68 = KC_F10
cintToKeyCode 69 = KC_NUMLOCK
cintToKeyCode 70 = KC_SCROLL
cintToKeyCode 71 = KC_NUMPAD7
cintToKeyCode 72 = KC_NUMPAD8
cintToKeyCode 73 = KC_NUMPAD9
cintToKeyCode 74 = KC_SUBTRACT
cintToKeyCode 75 = KC_NUMPAD4
cintToKeyCode 76 = KC_NUMPAD5
cintToKeyCode 77 = KC_NUMPAD6
cintToKeyCode 78 = KC_ADD
cintToKeyCode 79 = KC_NUMPAD1
cintToKeyCode 80 = KC_NUMPAD2
cintToKeyCode 81 = KC_NUMPAD3
cintToKeyCode 82 = KC_NUMPAD0
cintToKeyCode 83 = KC_DECIMAL
cintToKeyCode 86 = KC_OEM_102
cintToKeyCode 87 = KC_F11
cintToKeyCode 88 = KC_F12
cintToKeyCode 100 = KC_F13
cintToKeyCode 101 = KC_F14
cintToKeyCode 102 = KC_F15
cintToKeyCode 112 = KC_KANA
cintToKeyCode 115 = KC_ABNT_C1
cintToKeyCode 121 = KC_CONVERT
cintToKeyCode 123 = KC_NOCONVERT
cintToKeyCode 125 = KC_YEN
cintToKeyCode 126 = KC_ABNT_C2
cintToKeyCode 141 = KC_NUMPADEQUALS
cintToKeyCode 144 = KC_PREVTRACK
cintToKeyCode 145 = KC_AT
cintToKeyCode 146 = KC_COLON
cintToKeyCode 147 = KC_UNDERLINE
cintToKeyCode 148 = KC_KANJI
cintToKeyCode 149 = KC_STOP
cintToKeyCode 150 = KC_AX
cintToKeyCode 151 = KC_UNLABELED
cintToKeyCode 153 = KC_NEXTTRACK
cintToKeyCode 156 = KC_NUMPADENTER
cintToKeyCode 157 = KC_RCONTROL
cintToKeyCode 160 = KC_MUTE
cintToKeyCode 161 = KC_CALCULATOR
cintToKeyCode 162 = KC_PLAYPAUSE
cintToKeyCode 164 = KC_MEDIASTOP
cintToKeyCode 174 = KC_VOLUMEDOWN
cintToKeyCode 176 = KC_VOLUMEUP
cintToKeyCode 178 = KC_WEBHOME
cintToKeyCode 179 = KC_NUMPADCOMMA
cintToKeyCode 181 = KC_DIVIDE
cintToKeyCode 183 = KC_SYSRQ
cintToKeyCode 184 = KC_RMENU
cintToKeyCode 197 = KC_PAUSE
cintToKeyCode 199 = KC_HOME
cintToKeyCode 200 = KC_UP
cintToKeyCode 201 = KC_PGUP
cintToKeyCode 203 = KC_LEFT
cintToKeyCode 205 = KC_RIGHT
cintToKeyCode 207 = KC_END
cintToKeyCode 208 = KC_DOWN
cintToKeyCode 209 = KC_PGDOWN
cintToKeyCode 210 = KC_INSERT
cintToKeyCode 211 = KC_DELETE
cintToKeyCode 219 = KC_LWIN
cintToKeyCode 220 = KC_RWIN
cintToKeyCode 221 = KC_APPS
cintToKeyCode 222 = KC_POWER
cintToKeyCode 223 = KC_SLEEP
cintToKeyCode 227 = KC_WAKE
cintToKeyCode 229 = KC_WEBSEARCH
cintToKeyCode 230 = KC_WEBFAVORITES
cintToKeyCode 231 = KC_WEBREFRESH
cintToKeyCode 232 = KC_WEBSTOP
cintToKeyCode 233 = KC_WEBFORWARD
cintToKeyCode 234 = KC_WEBBACK
cintToKeyCode 235 = KC_MYCOMPUTER
cintToKeyCode 236 = KC_MAIL
cintToKeyCode 237 = KC_MEDIASELECT
cintToKeyCode n = error $ "cintToKeyCode: can not convert integer '" ++ show n ++ "' to KeyCode"

newtype KeyEvent = KeyEvent (Ptr KeyEvent) -- nullary data type
newtype KeyListener = KeyListener (Ptr KeyListener) -- nullary data type
newtype Keyboard = Keyboard (Ptr Keyboard) -- nullary data type

data Modifier = Shift | Ctrl | Alt

modifierToCInt :: Modifier -> CInt
modifierToCInt Shift = 1
modifierToCInt Ctrl = 16
modifierToCInt Alt = 256

cintToModifier :: CInt -> Modifier
cintToModifier 1 = Shift
cintToModifier 16 = Ctrl
cintToModifier 256 = Alt
cintToModifier n = error $ "cintToModifier: can not convert integer '" ++ show n ++ "' to Modifier"


data TextTranslationMode = Off | Unicode | Ascii

textTranslationModeToCInt :: TextTranslationMode -> CInt
textTranslationModeToCInt Off = 0
textTranslationModeToCInt Unicode = 1
textTranslationModeToCInt Ascii = 2

cintToTextTranslationMode :: CInt -> TextTranslationMode
cintToTextTranslationMode 0 = Off
cintToTextTranslationMode 1 = Unicode
cintToTextTranslationMode 2 = Ascii
cintToTextTranslationMode n = error $ "cintToTextTranslationMode: can not convert integer '" ++ show n ++ "' to TextTranslationMode"

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

