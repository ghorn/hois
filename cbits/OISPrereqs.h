#ifndef CGEN_OISPREREQS_H
#define CGEN_OISPREREQS_H


extern "C"
{

using namespace OIS;



#ifdef CGEN_HS
enum Type {
    OISUnknown = 0,
    OISKeyboard = 1,
    OISMouse = 2,
    OISJoyStick = 3,
    OISTablet = 4,
    OISMultiTouch = 5
};


enum ComponentType {
    OIS_Unknown = 0,
    OIS_Button = 1,
    OIS_Axis = 2,
    OIS_Slider = 3,
    OIS_POV = 4,
    OIS_Vector3 = 5
};


#endif

void OIS_Component_delete(Component* this_ptr);
void OIS_Button_delete(Button* this_ptr);
void OIS_Axis_delete(Axis* this_ptr);
void OIS_Vector3_delete(Vector3* this_ptr);
Component* OIS_Component_new_void();
Component* OIS_Component_new(ComponentType type);
Button* OIS_Button_new_void();
Button* OIS_Button_new(bool bPushed);
Axis* OIS_Axis_new();
void OIS_Axis_clear(Axis* this_ptr);
Vector3* OIS_Vector3_new_void();
Vector3* OIS_Vector3_new(float _x, float _y, float _z);
void OIS_Vector3_clear(Vector3* this_ptr);

}

#endif

