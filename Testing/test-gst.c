#include <stdio.h>
#include <stdlib.h>
#include "../gst.h"
#include "../integer.h"
#include "../real.h"
#include "../string.h"

int main(void) {
    GST *tree = newGST(displaySTRING, compareSTRING, freeSTRING);
    insertGST(tree, newSTRING("c"));
    insertGST(tree, newSTRING("z"));
    insertGST(tree, newSTRING("k"));
    insertGST(tree, newSTRING("d"));
    insertGST(tree, newSTRING("f"));
    insertGST(tree, newSTRING("j"));
    insertGST(tree, newSTRING("d"));
    STRING *tmp = newSTRING("d");
    STRING *del = deleteGST(tree, tmp);
    del = deleteGST(tree, tmp);
    displayGST(tree, stdout);
    return 0;
}
