/*
 *  File:   gst.c
 *  Author: Brett Heithold
 *  Description:
 */


#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "gst.h"
#include "bst.h"


typedef struct gval {
    void *value;
    int frequency;
    void (*display)(void *, FILE *);
    void (*compare)(void *, void *);
} GVAL;


GVAL *newGVAL(void *value, void (*d)(void *, FILE *), void (*c)(void *, void *)) {
    GVAL *rv = malloc(sizeof(GVAL));
    rv->value = value;
    rv->frequency = 0;
    rv->display = d;
    rv->compare = c;
    return rv;
}


void *getGVALvalue(GVAL *v) {
    assert(v != 0);
    return v->value;
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
