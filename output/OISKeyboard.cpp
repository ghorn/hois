#define CGEN_OUTPUT_INTERN
#include "OISKeyboard.h"
KeyEvent* OIS_KeyEvent_new(Object* obj, KeyCode kc, unsigned int txt)
{
    return new KeyEvent(obj, kc, txt);
}

void OIS_KeyEvent_delete(KeyEvent* this_ptr)
{
    delete this_ptr;
}

void OIS_KeyListener_delete(KeyListener* this_ptr)
{
    delete this_ptr;
}

bool OIS_KeyListener_keyPressed(KeyListener* this_ptr, const KeyEvent* arg)
{
    return this_ptr->keyPressed(*arg);
}

bool OIS_KeyListener_keyReleased(KeyListener* this_ptr, const KeyEvent* arg)
{
    return this_ptr->keyReleased(*arg);
}

void OIS_Keyboard_delete(Keyboard* this_ptr)
{
    delete this_ptr;
}

bool OIS_Keyboard_isKeyDown(const Keyboard* this_ptr, KeyCode key)
{
    return this_ptr->isKeyDown(key);
}

void OIS_Keyboard_setEventCallback(Keyboard* this_ptr, KeyListener* keyListener)
{
    this_ptr->setEventCallback(keyListener);
}

const KeyListener* OIS_Keyboard_getEventCallback(const Keyboard* this_ptr)
{
    return this_ptr->getEventCallback();
}

void OIS_Keyboard_setTextTranslation(Keyboard* this_ptr, Keyboard::TextTranslationMode mode)
{
    this_ptr->setTextTranslation(mode);
}

Keyboard::TextTranslationMode OIS_Keyboard_getTextTranslation(const Keyboard* this_ptr)
{
    return this_ptr->getTextTranslation();
}

bool OIS_Keyboard_isModifierDown(const Keyboard* this_ptr, Keyboard::Modifier mod)
{
    return this_ptr->isModifierDown(mod);
}

void OIS_Keyboard_copyKeyStates(const Keyboard* this_ptr, char keys)
{
    this_ptr->copyKeyStates(keys);
}

