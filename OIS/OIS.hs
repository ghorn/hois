module OIS.OIS(
  eventArg_with, 
  eventArg_new, 
  eventArg_delete, 
  factoryCreator_delete, 
  factoryCreator_totalDevices, 
  factoryCreator_freeDevices, 
  factoryCreator_vendorExist, 
  factoryCreator_createObject, 
  factoryCreator_destroyObject, 
  inputManager_getVersionNumber, 
  inputManager_createInputSystem, 
  inputManager_destroyInputSystem, 
  inputManager_getNumberOfDevices, 
  inputManager_createInputObject, 
  inputManager_destroyInputObject, 
  inputManager_addFactoryCreator, 
  inputManager_removeFactoryCreator, 
  inputManager_enableAddOnFactory, 
  interface_with, 
  interface_new, 
  interface_delete, 
  pov_with, 
  slider_with, 
  joyStickState_with, 
  joyStickEvent_with, 
  pov_delete, 
  slider_delete, 
  joyStickState_delete, 
  pov_new, 
  slider_new, 
  joyStickState_new, 
  joyStickState_clear, 
  joyStickEvent_new, 
  joyStickEvent_delete, 
  joyStickListener_delete, 
  joyStickListener_buttonPressed, 
  joyStickListener_buttonReleased, 
  joyStickListener_axisMoved, 
  joyStickListener_povMoved, 
  joyStickListener_vector3Moved, 
  joyStick_delete, 
  joyStick_getNumberOfComponents, 
  joyStick_setVector3Sensitivity, 
  joyStick_getVector3Sensitivity, 
  joyStick_setEventCallback, 
  joyStick_getEventCallback, 
  mouseState_with, 
  mouseEvent_with, 
  mouseState_delete, 
  mouseState_new, 
  mouseState_buttonDown, 
  mouseState_clear, 
  mouseEvent_new, 
  mouseEvent_delete, 
  mouseListener_delete, 
  mouseListener_mouseMoved, 
  mouseListener_mousePressed, 
  mouseListener_mouseReleased, 
  mouse_delete, 
  mouse_setEventCallback, 
  mouse_getEventCallback, 
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
  multiTouch_clearStates, 
  object_delete, 
  object_type, 
  object_buffered, 
  object_getCreator, 
  object_setBuffered, 
  object_capture, 
  object_getID, 
  object_queryInterface, 
  object__initialize, 
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

import OIS.OISEvents
import OIS.OISFactoryCreator
import OIS.OISInputManager
import OIS.OISInterface
import OIS.OISJoyStick
import OIS.OISMouse
import OIS.OISMultiTouch
import OIS.OISObject
import OIS.OISPrereqs
