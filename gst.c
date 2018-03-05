/*
 *  File:   gst.c
 *  Author: Brett Heithold
 *  Description:
 */


#include <stdio.h>
#include <stdlib.h>
#include "gst.h"
#include "bst.h"


typedef struct gval {
    void *key;
    int frequency;
    void (*display)(void *, FILE *);
    void (*compare)(void *, void *);
} GVAL;


GVAL *newGVAL(void *key, void (*d)(void *, FILE *), void (*c)(void *, void *)) {
    GVAL *rv = malloc(sizeof(GVAL));
    rv->key = key;
    rv->frequency = 0;
    rv->display = d;
    rv->compare = c;
    return rv;
}


int frequencyGVAL(GVAL *v) {
    assert(v != 0);
    return v->frequency;
}


void incrementFrequencyGVAL(GVAL *v) {
    assert(v != 0);
    v->frequency++;
}


void deccrementFrequencyGVAL(GVAL *v) {
    assert(v != 0);
    v->frequency--;
}
