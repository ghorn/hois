#!/bin/sh

#rm OIS/*
#rm cbits/*

HEADERLIST="--include /usr/include/OIS OISPrereqs.h \
    OISObject.h \
    OISMouse.h \
    OISJoyStick.h \
    OISMultiTouch.h \
    OISInputManager.h \
    OISFactoryCreator.h \
    OISEvents.h \
    OISInterface.h \
    OISKeyboard.h"
#    OISForceFeedback.h \ # cgen-hs makes faulty file
#    OISException.h \ # cgen fails
#    OISEffect.h # cgen fails
#    OISConfig.h \ # not intended for api use

GRAPHFILE=interface/ois.gr

cgen -o cbits/ --interface interface/ois.if $HEADERLIST

grgen -o $GRAPHFILE $HEADERLIST

cgen-hs --inherit $GRAPHFILE \
	--interface interface/ois.hif \
	-o OIS/ \
	--hierarchy OIS. cbits/*.h 
