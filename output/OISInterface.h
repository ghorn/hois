#ifndef CGEN_OISINTERFACE_H
#define CGEN_OISINTERFACE_H


extern "C"
{

using namespace OIS;



#ifdef CGEN_HS
enum IType {
    ForceFeedback = 0,
    Reserved = 1
};


#endif

Interface* OIS_Interface_new();
void OIS_Interface_delete(Interface* this_ptr);

}

#endif

