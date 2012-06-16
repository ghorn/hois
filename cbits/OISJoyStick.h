#ifndef CGEN_OISJOYSTICK_H
#define CGEN_OISJOYSTICK_H

#include <OIS/OIS.h>

extern "C"
{

using namespace OIS;



#ifdef CGEN_HS
#endif

void OIS_Pov_delete(Pov* this_ptr);
void OIS_Slider_delete(Slider* this_ptr);
void OIS_JoyStickState_delete(JoyStickState* this_ptr);
Pov* OIS_Pov_new();
Slider* OIS_Slider_new();
JoyStickState* OIS_JoyStickState_new();
void OIS_JoyStickState_clear(JoyStickState* this_ptr);
JoyStickEvent* OIS_JoyStickEvent_new(Object* obj, const JoyStickState* st);
void OIS_JoyStickEvent_delete(JoyStickEvent* this_ptr);
void OIS_JoyStickListener_delete(JoyStickListener* this_ptr);
bool OIS_JoyStickListener_buttonPressed(JoyStickListener* this_ptr, const JoyStickEvent* arg, int button);
bool OIS_JoyStickListener_buttonReleased(JoyStickListener* this_ptr, const JoyStickEvent* arg, int button);
bool OIS_JoyStickListener_axisMoved(JoyStickListener* this_ptr, const JoyStickEvent* arg, int axis);
bool OIS_JoyStickListener_povMoved(JoyStickListener* this_ptr, const JoyStickEvent* arg, int index);
bool OIS_JoyStickListener_vector3Moved(JoyStickListener* this_ptr, const JoyStickEvent* arg, int index);
void OIS_JoyStick_delete(JoyStick* this_ptr);
int OIS_JoyStick_getNumberOfComponents(const JoyStick* this_ptr, ComponentType cType);
void OIS_JoyStick_setVector3Sensitivity(JoyStick* this_ptr, float degrees);
float OIS_JoyStick_getVector3Sensitivity(const JoyStick* this_ptr);
void OIS_JoyStick_setEventCallback(JoyStick* this_ptr, JoyStickListener* joyListener);
const JoyStickListener* OIS_JoyStick_getEventCallback(const JoyStick* this_ptr);
const JoyStickState* OIS_JoyStick_getJoyStickState(const JoyStick* this_ptr);

}

#endif

