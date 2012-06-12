#ifndef CGEN_OISFACTORYCREATOR_H
#define CGEN_OISFACTORYCREATOR_H

#include <OIS/OIS.h>

extern "C"
{

using namespace OIS;



#ifdef CGEN_HS
#endif

void OIS_FactoryCreator_delete(FactoryCreator* this_ptr);
DeviceList OIS_FactoryCreator_freeDeviceList(FactoryCreator* this_ptr);
int OIS_FactoryCreator_totalDevices(FactoryCreator* this_ptr, Type iType);
int OIS_FactoryCreator_freeDevices(FactoryCreator* this_ptr, Type iType);
bool OIS_FactoryCreator_vendorExist(FactoryCreator* this_ptr, Type iType, const std::string* vendor);
Object* OIS_FactoryCreator_createObject(FactoryCreator* this_ptr, InputManager* creator, Type iType, bool bufferMode, const std::string* vendor);
void OIS_FactoryCreator_destroyObject(FactoryCreator* this_ptr, Object* obj);

}

#endif

