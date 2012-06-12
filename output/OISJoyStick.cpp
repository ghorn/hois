#define CGEN_OUTPUT_INTERN
#include "OISJoyStick.h"
void OIS_Pov_delete(Pov* this_ptr)
{
    delete this_ptr;
}

void OIS_Slider_delete(Slider* this_ptr)
{
    delete this_ptr;
}

void OIS_JoyStickState_delete(JoyStickState* this_ptr)
{
    delete this_ptr;
}

Pov* OIS_Pov_new()
{
    return new Pov();
}

Slider* OIS_Slider_new()
{
    return new Slider();
}

JoyStickState* OIS_JoyStickState_new()
{
    return new JoyStickState();
}

void OIS_JoyStickState_clear(JoyStickState* this_ptr)
{
    this_ptr->clear();
}

JoyStickEvent* OIS_JoyStickEvent_new(Object* obj, const JoyStickState* st)
{
    return new JoyStickEvent(obj, *st);
}

void OIS_JoyStickEvent_delete(JoyStickEvent* this_ptr)
{
    delete this_ptr;
}

void OIS_JoyStickListener_delete(JoyStickListener* this_ptr)
{
    delete this_ptr;
}

bool OIS_JoyStickListener_buttonPressed(JoyStickListener* this_ptr, const JoyStickEvent* arg, int button)
{
    return this_ptr->buttonPressed(*arg, button);
}

bool OIS_JoyStickListener_buttonReleased(JoyStickListener* this_ptr, const JoyStickEvent* arg, int button)
{
    return this_ptr->buttonReleased(*arg, button);
}

bool OIS_JoyStickListener_axisMoved(JoyStickListener* this_ptr, const JoyStickEvent* arg, int axis)
{
    return this_ptr->axisMoved(*arg, axis);
}

bool OIS_JoyStickListener_sliderMoved(JoyStickListener* this_ptr, const JoyStickEvent &, int index)
{
    return this_ptr->sliderMoved(&, index);
}

bool OIS_JoyStickListener_povMoved(JoyStickListener* this_ptr, const JoyStickEvent* arg, int index)
{
    return this_ptr->povMoved(*arg, index);
}

bool OIS_JoyStickListener_vector3Moved(JoyStickListener* this_ptr, const JoyStickEvent* arg, int index)
{
    return this_ptr->vector3Moved(*arg, index);
}

void OIS_JoyStick_delete(JoyStick* this_ptr)
{
    delete this_ptr;
}

int OIS_JoyStick_getNumberOfComponents(const JoyStick* this_ptr, ComponentType cType)
{
    return this_ptr->getNumberOfComponents(cType);
}

void OIS_JoyStick_setVector3Sensitivity(JoyStick* this_ptr, float degrees)
{
    this_ptr->setVector3Sensitivity(degrees);
}

float OIS_JoyStick_getVector3Sensitivity(const JoyStick* this_ptr)
{
    return this_ptr->getVector3Sensitivity();
}

void OIS_JoyStick_setEventCallback(JoyStick* this_ptr, JoyStickListener* joyListener)
{
    this_ptr->setEventCallback(joyListener);
}

const JoyStickListener* OIS_JoyStick_getEventCallback(const JoyStick* this_ptr)
{
    return this_ptr->getEventCallback();
}

