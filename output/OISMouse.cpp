#define CGEN_OUTPUT_INTERN
#include "OISMouse.h"
void OIS_MouseState_delete(MouseState* this_ptr)
{
    delete this_ptr;
}

MouseState* OIS_MouseState_new()
{
    return new MouseState();
}

bool OIS_MouseState_buttonDown(const MouseState* this_ptr, MouseButtonID button)
{
    return this_ptr->buttonDown(button);
}

void OIS_MouseState_clear(MouseState* this_ptr)
{
    this_ptr->clear();
}

MouseEvent* OIS_MouseEvent_new(Object* obj, const MouseState* ms)
{
    return new MouseEvent(obj, *ms);
}

void OIS_MouseEvent_delete(MouseEvent* this_ptr)
{
    delete this_ptr;
}

void OIS_MouseListener_delete(MouseListener* this_ptr)
{
    delete this_ptr;
}

bool OIS_MouseListener_mouseMoved(MouseListener* this_ptr, const MouseEvent* arg)
{
    return this_ptr->mouseMoved(*arg);
}

bool OIS_MouseListener_mousePressed(MouseListener* this_ptr, const MouseEvent* arg, MouseButtonID id)
{
    return this_ptr->mousePressed(*arg, id);
}

bool OIS_MouseListener_mouseReleased(MouseListener* this_ptr, const MouseEvent* arg, MouseButtonID id)
{
    return this_ptr->mouseReleased(*arg, id);
}

void OIS_Mouse_delete(Mouse* this_ptr)
{
    delete this_ptr;
}

void OIS_Mouse_setEventCallback(Mouse* this_ptr, MouseListener* mouseListener)
{
    this_ptr->setEventCallback(mouseListener);
}

const MouseListener* OIS_Mouse_getEventCallback(const Mouse* this_ptr)
{
    return this_ptr->getEventCallback();
}

