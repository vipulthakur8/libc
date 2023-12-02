
#include <stdlib.h>
#include <math.h>
#include "mylibc/math.h"

double power(double base, int exponent) {
    if (exponent == 0) {
        return 1.0;
    }

    double result = 1.0;

    for (int i = 0; i < abs(exponent); ++i) {
        result *= base;
    }

    return (exponent < 0) ? 1.0 / result : result;
}

