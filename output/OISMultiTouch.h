#ifndef CGEN_OISMULTITOUCH_H
#define CGEN_OISMULTITOUCH_H


extern "C"
{

using namespace OIS;



#ifdef CGEN_HS
enum MultiTypeEventTypeID {
    MT_None = 0,
    MT_Pressed = 1,
    MT_Released = 2,
    MT_Moved = 3,
    MT_Cancelled = 4
};


#endif

void OIS_MultiTouchState_delete(MultiTouchState* this_ptr);
MultiTouchState* OIS_MultiTouchState_new();
bool OIS_MultiTouchState_touchIsType(const MultiTouchState* this_ptr, MultiTypeEventTypeID touch);
void OIS_MultiTouchState_clear(MultiTouchState* this_ptr);
MultiTouchEvent* OIS_MultiTouchEvent_new(Object* obj, const MultiTouchState* ms);
void OIS_MultiTouchEvent_delete(MultiTouchEvent* this_ptr);
void OIS_MultiTouchListener_delete(MultiTouchListener* this_ptr);
bool OIS_MultiTouchListener_touchMoved(MultiTouchListener* this_ptr, const MultiTouchEvent* arg);
bool OIS_MultiTouchListener_touchPressed(MultiTouchListener* this_ptr, const MultiTouchEvent* arg);
bool OIS_MultiTouchListener_touchReleased(MultiTouchListener* this_ptr, const MultiTouchEvent* arg);
bool OIS_MultiTouchListener_touchCancelled(MultiTouchListener* this_ptr, const MultiTouchEvent* arg);
void OIS_MultiTouch_delete(MultiTouch* this_ptr);
void OIS_MultiTouch_setEventCallback(MultiTouch* this_ptr, MultiTouchListener* touchListener);
MultiTouchListener* OIS_MultiTouch_getEventCallback(MultiTouch* this_ptr);
void OIS_MultiTouch_clearStates(MultiTouch* this_ptr);
std::vector<MultiTouchState> OIS_MultiTouch_getMultiTouchStates(const MultiTouch* this_ptr);
const std::vector<MultiTouchState> OIS_MultiTouch_getFirstNTouchStates(MultiTouch* this_ptr, int n);
const std::vector<MultiTouchState> OIS_MultiTouch_getMultiTouchStatesOfType(MultiTouch* this_ptr, MultiTypeEventTypeID type);

}

#endif

