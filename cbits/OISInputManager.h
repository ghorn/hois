#ifndef CGEN_OISINPUTMANAGER_H
#define CGEN_OISINPUTMANAGER_H

#include <OIS/OIS.h>

extern "C"
{

using namespace OIS;



#ifdef CGEN_HS
enum AddOnFactories {
    AddOn_All = 0,
    AddOn_LIRC = 1,
    AddOn_WiiMote = 2
};


#endif

unsigned int OIS_InputManager_getVersionNumber();
InputManager* OIS_InputManager_createInputSystem_stdsize_t(std::size_t winHandle);
InputManager* OIS_InputManager_createInputSystem(ParamList* paramList);
void OIS_InputManager_destroyInputSystem(InputManager* manager);
int OIS_InputManager_getNumberOfDevices(InputManager* this_ptr, Type iType);
DeviceList OIS_InputManager_listFreeDevices(InputManager* this_ptr);
Object* OIS_InputManager_createInputObject(InputManager* this_ptr, Type iType, bool bufferMode, const std::string* vendor);
void OIS_InputManager_destroyInputObject(InputManager* this_ptr, Object* obj);
void OIS_InputManager_addFactoryCreator(InputManager* this_ptr, FactoryCreator* factory);
void OIS_InputManager_removeFactoryCreator(InputManager* this_ptr, FactoryCreator* factory);
void OIS_InputManager_enableAddOnFactory(InputManager* this_ptr, InputManager::AddOnFactories factory);

}

#endif

