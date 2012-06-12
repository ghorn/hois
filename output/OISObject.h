#ifndef CGEN_OISOBJECT_H
#define CGEN_OISOBJECT_H


extern "C"
{

using namespace OIS;



#ifdef CGEN_HS
#endif

void OIS_Object_delete(Object* this_ptr);
Type OIS_Object_type(const Object* this_ptr);
bool OIS_Object_buffered(const Object* this_ptr);
const InputManager* OIS_Object_getCreator(const Object* this_ptr);
void OIS_Object_setBuffered(Object* this_ptr, bool buffered);
void OIS_Object_capture(Object* this_ptr);
int OIS_Object_getID(const Object* this_ptr);
Interface* OIS_Object_queryInterface(Object* this_ptr, Interface::IType type);
void OIS_Object__initialize(Object* this_ptr);

}

#endif

