#define CGEN_OUTPUT_INTERN
#include "OISObject.h"
void OIS_Object_delete(Object* this_ptr)
{
    delete this_ptr;
}

Type OIS_Object_type(const Object* this_ptr)
{
    return this_ptr->type();
}

bool OIS_Object_buffered(const Object* this_ptr)
{
    return this_ptr->buffered();
}

const InputManager* OIS_Object_getCreator(const Object* this_ptr)
{
    return this_ptr->getCreator();
}

void OIS_Object_setBuffered(Object* this_ptr, bool buffered)
{
    this_ptr->setBuffered(buffered);
}

void OIS_Object_capture(Object* this_ptr)
{
    this_ptr->capture();
}

int OIS_Object_getID(const Object* this_ptr)
{
    return this_ptr->getID();
}

Interface* OIS_Object_queryInterface(Object* this_ptr, Interface::IType type)
{
    return this_ptr->queryInterface(type);
}

void OIS_Object__initialize(Object* this_ptr)
{
    this_ptr->_initialize();
}

