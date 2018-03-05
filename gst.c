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
    void (*free)(void *);
} GVAL;


GVAL *newGVAL(void *value, void (*d)(void *, FILE *), void (*c)(void *, void *), void (*f)(void *)) {
    GVAL *rv = malloc(sizeof(GVAL));
    rv->value = value;
    rv->frequency = 0;
    rv->display = d;
    rv->compare = c;
    rv->free = f;
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


void freeGVAL(void *v) {
    ((GVAL *)v)->free(getGVALvalue((GVAL *) v));
    free((GVAL *) v);
}


struct GST {
    BST *store;
    void (*display)(void *, FILE *);
    int (*compare)(void *, void *);
    void (*free)(void *);
};


GST *newGST(void (*d)(void *, FILE *), int (*c)(void *, void *), void (*f)(void *)) {
    GST *rv = malloc(sizeof(GST));
    assert(rv != 0);
    rv->store = newBST(d, c, NULL, freeGVAL);
    rv->display = d;
    rv->compare = c;
    rv->free = f;
    return rv;
}


int sizeGST(GST *t) {
    assert(t != 0);
    return sizeBST(t->store);
}


void freeGST(GST *t) {
    freeBST(t->store);
    free(t);
}
