#include <stdio.h>

#define BUILDING_DLL
#include "dll.h"

extern int funcPrint();
/*
int funcPrint() {
    printf("funcPrint in libE\n");
    return 0;
}
*/

DLL_PUBLIC int funcPubPrint() {
    printf("funcPubPrint in libE\n");
    return 0;
}

DLL_PUBLIC int funcE() {
    printf("run funcE funcPrint => ");
    return funcPrint();
}

