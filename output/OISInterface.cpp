#define CGEN_OUTPUT_INTERN
#include "OISInterface.h"
Interface* OIS_Interface_new()
{
    return new Interface();
}

void OIS_Interface_delete(Interface* this_ptr)
{
    delete this_ptr;
}

