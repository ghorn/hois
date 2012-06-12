#rm OIS/*
#rm cbits/*

cgen -o cbits/ --interface interface/ois.if --include /usr/include/OIS \
    OISPrereqs.h \
    OISObject.h \
    OISMouse.h \
    OISJoyStick.h \
    OISMultiTouch.h \
    OISInputManager.h \
    OISFactoryCreator.h \
    OISEvents.h \
    OISInterface.h \
#    OISKeyboard.h \ # cgen-hs makes faulty file (easy to fix by hand)
#    OISForceFeedback.h \ # cgen-hs makes faulty file
#    OISException.h \ # cgen fails
#    OISEffect.h # cgen fails
#    OISConfig.h \ # not intended for api use

cgen-hs -o OIS/ --interface interface/ois.if -u OIS.hs --hierarchy OIS. cbits/*.h 
