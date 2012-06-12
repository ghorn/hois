#rm OIS/*
#rm output/*

cgen -o output/ --include /usr/include/OIS \
    OISPrereqs.h \
    OISObject.h \
    OISMouse.h \
    OISKeyboard.h \ # cgen-hs makes file with easy to fix bug
    OISJoyStick.h \
    OISMultiTouch.h \
    OISInputManager.h \
    OISFactoryCreator.h \
    OISEvents.h \
    OISInterface.h \
#    OISForceFeedback.h \ # cgen-hs makes faulty file
#    OISException.h \ # cgen fails
#    OISEffect.h # cgen fails
#    OISConfig.h \ # not intended for api use

cgen-hs -o OIS/ output/*.h -u OIS.hs --hierarchy OIS.
