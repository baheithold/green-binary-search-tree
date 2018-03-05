#include <stdio.h>
#include <stdlib.h>
#include "../gst.h"
#include "../integer.h"
#include "../real.h"
#include "../string.h"

int main(void) {
    GST *tree = newGST(displayINTEGER, compareINTEGER, freeINTEGER);
    freeGST(tree);
    return 0;
}
