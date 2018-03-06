#include <stdio.h>
#include <stdlib.h>
#include "../gst.h"
#include "../integer.h"
#include "../real.h"
#include "../string.h"

int main(void) {
    GST *tree = newGST(displayINTEGER, compareINTEGER, freeINTEGER);
    insertGST(tree, newINTEGER(7));
    insertGST(tree, newINTEGER(7));
    insertGST(tree, newINTEGER(4));
    insertGST(tree, newINTEGER(5));
    insertGST(tree, newINTEGER(7));
    insertGST(tree, newINTEGER(9));
    insertGST(tree, newINTEGER(9));
    insertGST(tree, newINTEGER(9));
    insertGST(tree, newINTEGER(5));
    printf("Displaying statistics: \n");
    statisticsGST(tree, stdout);
    printf("Displaying decorated tree: \n");
    displayGST(tree, stdout);
    printf("DELETING 4...\n");
    INTEGER *r = newINTEGER(4);
    void *v = deleteGST(tree, r);
    printf("Displaying decorated tree: \n");
    displayGST(tree, stdout);
    printf("Displaying statistics after removing 4: \n");
    statisticsGST(tree, stdout);
    freeINTEGER(r);
    freeGST(tree);
    return 0;
}
