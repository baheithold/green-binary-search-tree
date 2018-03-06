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
    insertGST(tree, newINTEGER(7));
    insertGST(tree, newINTEGER(9));
    insertGST(tree, newINTEGER(9));
    insertGST(tree, newINTEGER(9));
    printf("Displaying statistics: \n");
    statisticsGST(tree, stdout);
    printf("Displaying decorated tree: \n");
    displayGST(tree, stdout);
    freeGST(tree);
    return 0;
}
