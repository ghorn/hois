#define CGEN_OUTPUT_INTERN
#include "OISEvents.h"
EventArg* OIS_EventArg_new(Object* obj)
{
    return new EventArg(obj);
}

void OIS_EventArg_delete(EventArg* this_ptr)
{
    delete this_ptr;
}

