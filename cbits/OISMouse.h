#ifndef CGEN_OISMOUSE_H
#define CGEN_OISMOUSE_H

#include <OIS/OIS.h>

extern "C"
{

using namespace OIS;



#ifdef CGEN_HS
enum MouseButtonID {
    MB_Left = 0,
    MB_Right = 1,
    MB_Middle = 2,
    MB_Button3 = 3,
    MB_Button4 = 4,
    MB_Button5 = 5,
    MB_Button6 = 6,
    MB_Button7 = 7
};


#endif

void OIS_MouseState_delete(MouseState* this_ptr);
MouseState* OIS_MouseState_new();
bool OIS_MouseState_buttonDown(const MouseState* this_ptr, MouseButtonID button);
void OIS_MouseState_clear(MouseState* this_ptr);
MouseEvent* OIS_MouseEvent_new(Object* obj, const MouseState* ms);
void OIS_MouseEvent_delete(MouseEvent* this_ptr);
void OIS_MouseListener_delete(MouseListener* this_ptr);
bool OIS_MouseListener_mouseMoved(MouseListener* this_ptr, const MouseEvent* arg);
bool OIS_MouseListener_mousePressed(MouseListener* this_ptr, const MouseEvent* arg, MouseButtonID id);
bool OIS_MouseListener_mouseReleased(MouseListener* this_ptr, const MouseEvent* arg, MouseButtonID id);
void OIS_Mouse_delete(Mouse* this_ptr);
void OIS_Mouse_setEventCallback(Mouse* this_ptr, MouseListener* mouseListener);
const MouseListener* OIS_Mouse_getEventCallback(const Mouse* this_ptr);
const MouseState* OIS_Mouse_getMouseState(const Mouse* this_ptr);

}

#endif

