#define CGEN_OUTPUT_INTERN
#include "OISPrereqs.h"
void OIS_Component_delete(Component* this_ptr)
{
    delete this_ptr;
}

void OIS_Button_delete(Button* this_ptr)
{
    delete this_ptr;
}

void OIS_Axis_delete(Axis* this_ptr)
{
    delete this_ptr;
}

void OIS_Vector3_delete(Vector3* this_ptr)
{
    delete this_ptr;
}

Component* OIS_Component_new_void()
{
    return new Component();
}

Component* OIS_Component_new(ComponentType type)
{
    return new Component(type);
}

Button* OIS_Button_new_void()
{
    return new Button();
}

Button* OIS_Button_new(bool bPushed)
{
    return new Button(bPushed);
}

Axis* OIS_Axis_new()
{
    return new Axis();
}

void OIS_Axis_clear(Axis* this_ptr)
{
    this_ptr->clear();
}

Vector3* OIS_Vector3_new_void()
{
    return new Vector3();
}

Vector3* OIS_Vector3_new(float _x, float _y, float _z)
{
    return new Vector3(_x, _y, _z);
}

void OIS_Vector3_clear(Vector3* this_ptr)
{
    this_ptr->clear();
}

