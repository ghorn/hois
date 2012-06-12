#ifndef CGEN_OISEVENTS_H
#define CGEN_OISEVENTS_H

#include <OIS/OIS.h>

extern "C"
{

using namespace OIS;



#ifdef CGEN_HS
#endif

EventArg* OIS_EventArg_new(Object* obj);
void OIS_EventArg_delete(EventArg* this_ptr);

}

#endif

