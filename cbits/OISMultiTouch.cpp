#define CGEN_OUTPUT_INTERN
#include "OISMultiTouch.h"
void OIS_MultiTouchState_delete(MultiTouchState* this_ptr)
{
    delete this_ptr;
}

MultiTouchState* OIS_MultiTouchState_new()
{
    return new MultiTouchState();
}

bool OIS_MultiTouchState_touchIsType(const MultiTouchState* this_ptr, MultiTypeEventTypeID touch)
{
    return this_ptr->touchIsType(touch);
}

void OIS_MultiTouchState_clear(MultiTouchState* this_ptr)
{
    this_ptr->clear();
}

MultiTouchEvent* OIS_MultiTouchEvent_new(Object* obj, const MultiTouchState* ms)
{
    return new MultiTouchEvent(obj, *ms);
}

void OIS_MultiTouchEvent_delete(MultiTouchEvent* this_ptr)
{
    delete this_ptr;
}

void OIS_MultiTouchListener_delete(MultiTouchListener* this_ptr)
{
    delete this_ptr;
}

bool OIS_MultiTouchListener_touchMoved(MultiTouchListener* this_ptr, const MultiTouchEvent* arg)
{
    return this_ptr->touchMoved(*arg);
}

bool OIS_MultiTouchListener_touchPressed(MultiTouchListener* this_ptr, const MultiTouchEvent* arg)
{
    return this_ptr->touchPressed(*arg);
}

bool OIS_MultiTouchListener_touchReleased(MultiTouchListener* this_ptr, const MultiTouchEvent* arg)
{
    return this_ptr->touchReleased(*arg);
}

bool OIS_MultiTouchListener_touchCancelled(MultiTouchListener* this_ptr, const MultiTouchEvent* arg)
{
    return this_ptr->touchCancelled(*arg);
}

void OIS_MultiTouch_delete(MultiTouch* this_ptr)
{
    delete this_ptr;
}

void OIS_MultiTouch_setEventCallback(MultiTouch* this_ptr, MultiTouchListener* touchListener)
{
    this_ptr->setEventCallback(touchListener);
}

MultiTouchListener* OIS_MultiTouch_getEventCallback(MultiTouch* this_ptr)
{
    return this_ptr->getEventCallback();
}

void OIS_MultiTouch_clearStates(MultiTouch* this_ptr)
{
    this_ptr->clearStates();
}

std::vector<MultiTouchState> OIS_MultiTouch_getMultiTouchStates(const MultiTouch* this_ptr)
{
    return this_ptr->getMultiTouchStates();
}

const std::vector<MultiTouchState> OIS_MultiTouch_getFirstNTouchStates(MultiTouch* this_ptr, int n)
{
    return this_ptr->getFirstNTouchStates(n);
}

const std::vector<MultiTouchState> OIS_MultiTouch_getMultiTouchStatesOfType(MultiTouch* this_ptr, MultiTypeEventTypeID type)
{
    return this_ptr->getMultiTouchStatesOfType(type);
}

