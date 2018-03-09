#include <stdio.h>
#include <stdlib.h>
#include "../gst.h"
#include "../integer.h"
#include "../real.h"
#include "../string.h"

int main(void) {
    GST *tree = newGST(displayINTEGER, compareINTEGER, freeINTEGER);
    insertGST(tree, newINTEGER(7));
    printf("Displaying statistics: \n");
    statisticsGST(tree, stdout);
    printf("Displaying decorated tree: \n");
    displayGST(tree, stdout);
    printf("DELETING 7...\n");
    INTEGER *r = newINTEGER(7);
    void *v = deleteGST(tree, r);
    printf("Displaying decorated tree: \n");
    displayGST(tree, stdout);
    printf("Displaying statistics after removing 4: \n");
    statisticsGST(tree, stdout);
    freeINTEGER(v);
    freeGST(tree);
    return 0;
}
