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
    int (*compare)(void *, void *);
    void (*free)(void *);
} GVAL;


GVAL *newGVAL(
        void *value,
        void (*d)(void *, FILE *),
        int (*c)(void *, void *),
        void (*f)(void *)) {
    GVAL *rv = malloc(sizeof(GVAL));
    assert(rv != 0);
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


void displayGVAL(void *v, FILE *fp) {
    ((GVAL *) v)->display(getGVALvalue((GVAL *) v), fp);
    fprintf(fp, "[%d]", frequencyGVAL((GVAL *) v));
}


int compareGVAL(void *v, void *w) {
    return ((GVAL *)v)->compare(getGVALvalue(v), getGVALvalue(w));
}


void freeGVAL(void *v) {
    assert(v != 0);
    ((GVAL *)v)->free(getGVALvalue((GVAL *) v));
    free((GVAL *) v);
}


struct GST {
    BST *store;
    int size;
    void (*display)(void *, FILE *);
    int (*compare)(void *, void *);
    void (*free)(void *);
};


/*
 *  Constructor: newGST
 *  Usage:  GST *t = newGST(display, comparator, free);
 *  Description: This method instantiates a new GST object.
 */
GST *newGST(void (*d)(void *, FILE *), int (*c)(void *, void *), void (*f)(void *)) {
    GST *rv = malloc(sizeof(GST));
    assert(rv != 0);
    rv->store = newBST(displayGVAL, compareGVAL, NULL, freeGVAL);
    rv->size = 0;
    rv->display = d;
    rv->compare = c;
    rv->free = f;
    return rv;
}


/*
 *  Method: findGSTcount
 *  Usage:  int count = findGSTcount(t, val);
 *  Description: This method returns the frequency of a value in the GST. This
 *  method calls the findBST method to find the value in the underlying BST. If
 *  the findBST method returns NULL then a frequency of zero is returned to
 *  the caller of this method.
 */
int findGSTcount(GST *t, void *v) {
    assert(t != 0);
    GVAL *temp = newGVAL(v, NULL, t->compare, t->free);
    GVAL *vtemp = (GVAL *)findBST(t->store, temp);
    freeGVAL(temp);
    return vtemp == NULL ? 0 : frequencyGVAL(vtemp);
}


/*
 *  Method: findGST
 *  Usage:  void *v = findGST(t, value);
 *  Description: This method returns the searched-for value. If the value is
 *  not in the tree, the method returns NULL.
 */
void *findGST(GST *t, void *v) {
    assert(t != 0);
    GVAL *temp = newGVAL(v, NULL, t->compare, t->free);
    GVAL *rv = (GVAL *)findBST(t->store, temp);
    freeGVAL(temp);
    return rv;
}


/*
 *  Method: sizeGST
 *  Usage:  int s = sizeGST(t);
 *  Description: This method returns the number of nodes in the underlying BST
 *  store by calling the sizeBST method.
 */
int sizeGST(GST *t) {
    assert(t != 0);
    return sizeBST(t->store);
}


/*
 *  Method: duplicatesGST
 *  Usage:  int nDuplicates = duplicatesGST(t);
 *  Description: This method returns the number of duplicate values currently
 *  in the tree. It runs in amortized constant time. The number of duplicates
 *  is equal to the net number of GST insertions minus the number of nodes
 *  in the underlying BST.
 */
int duplicatesGST(GST *t) {
    assert(t != 0);
    return t->size - sizeBST(t->store);
}


/*
 *  Method: statisticsGST
 *  Usage:  statisticsGST(t, stdout);
 *  Description: This method displays the number of duplicates followed by a
 *  call to the BST statistics method of the underlying BST store.
 *  Example Output:
 */
void statisticsGST(GST *t, FILE *fp) {
    assert(t != 0);
    fprintf(fp, "Duplicates: %d\n", duplicatesGST(t));
    statisticsBST(t->store, fp);
}


/*
 *  Method: freeGST
 *  Usage:  freeGST(t);
 *  Description: This method frees the GST by first freeing the underlying
 *  BST store. The method then frees the GST object. This method runs in linear
 *  time.
 */
void freeGST(GST *t) {
    assert(t != 0);
    freeBST(t->store);
    free(t);
}
