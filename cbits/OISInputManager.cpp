#define CGEN_OUTPUT_INTERN
#include "OISInputManager.h"
unsigned int OIS_InputManager_getVersionNumber()
{
    return InputManager::getVersionNumber();
}

InputManager* OIS_InputManager_createInputSystem_size_t(size_t winHandle)
{
    return InputManager::createInputSystem(winHandle);
}

InputManager* OIS_InputManager_createInputSystem(ParamList* paramList)
{
    return InputManager::createInputSystem(*paramList);
}

void OIS_InputManager_destroyInputSystem(InputManager* manager)
{
    InputManager::destroyInputSystem(manager);
}

int OIS_InputManager_getNumberOfDevices(InputManager* this_ptr, Type iType)
{
    return this_ptr->getNumberOfDevices(iType);
}

DeviceList OIS_InputManager_listFreeDevices(InputManager* this_ptr)
{
    return this_ptr->listFreeDevices();
}

Object* OIS_InputManager_createInputObject(InputManager* this_ptr, Type iType, bool bufferMode, const std::string* vendor)
{
    return this_ptr->createInputObject(iType, bufferMode, *vendor);
}

void OIS_InputManager_destroyInputObject(InputManager* this_ptr, Object* obj)
{
    this_ptr->destroyInputObject(obj);
}

void OIS_InputManager_addFactoryCreator(InputManager* this_ptr, FactoryCreator* factory)
{
    this_ptr->addFactoryCreator(factory);
}

void OIS_InputManager_removeFactoryCreator(InputManager* this_ptr, FactoryCreator* factory)
{
    this_ptr->removeFactoryCreator(factory);
}

void OIS_InputManager_enableAddOnFactory(InputManager* this_ptr, InputManager::AddOnFactories factory)
{
    this_ptr->enableAddOnFactory(factory);
}

