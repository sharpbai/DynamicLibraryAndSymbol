#include <stdio.h>

#define BUILDING_DLL
#include "dll.h"

extern int funcPrint();

/*
DLL_LOCAL int funcPrint() {
    printf("funcPrint in libA\n");
    return 0;
}
*/

DLL_PUBLIC int funcPubPrint() {
    printf("funcPubPrint in libA\n");
    return 0;
}

DLL_PUBLIC int funcA() {
    printf("run funcA funcPrint => ");
    return funcPrint();
}

