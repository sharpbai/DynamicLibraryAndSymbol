#include <stdio.h>
#include "dll.h"

DLL_PUBLIC int funcA();
DLL_PUBLIC int funcE();
DLL_PUBLIC int funcPubPrint();

int main() {
    printf("run funcA: ");
    funcA();
    printf("run funcE: ");
    funcE();
    printf("run funcPubPrint: ");
    funcPubPrint();
    return 0;
}
