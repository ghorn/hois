#define CGEN_OUTPUT_INTERN
#include "OISFactoryCreator.h"
void OIS_FactoryCreator_delete(FactoryCreator* this_ptr)
{
    delete this_ptr;
}

DeviceList OIS_FactoryCreator_freeDeviceList(FactoryCreator* this_ptr)
{
    return this_ptr->freeDeviceList();
}

int OIS_FactoryCreator_totalDevices(FactoryCreator* this_ptr, Type iType)
{
    return this_ptr->totalDevices(iType);
}

int OIS_FactoryCreator_freeDevices(FactoryCreator* this_ptr, Type iType)
{
    return this_ptr->freeDevices(iType);
}

Object* OIS_FactoryCreator_createObject(FactoryCreator* this_ptr, InputManager* creator, Type iType, bool bufferMode, const char* vendor)
{
    return this_ptr->createObject(creator, iType, bufferMode, vendor);
}

void OIS_FactoryCreator_destroyObject(FactoryCreator* this_ptr, Object* obj)
{
    this_ptr->destroyObject(obj);
}

