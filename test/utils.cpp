#include <math.h>
#include <float.h>
#include <algorithm>
#include "fp12.h"
#include "stdio.h"

const fp12 one_by_sqrt3fp = 2365;
const fp12 two_by_sqrt3fp = 4730;
const fp12 onefp = 4096;
const fp12 halffp = 2048;

const float one_by_sqrt3 = 1.0/sqrt(3);
const float two_by_sqrt3 = 2.0/sqrt(3);


int SVMfp(fp12 alpha, fp12 beta, fp12* tA, fp12* tB, fp12* tC) {
    int Sextant;

    if (beta >= 0) {
        if (alpha >= 0) {
            //quadrant I
            if (one_by_sqrt3fp * beta > alpha)
                Sextant = 2; //sextant v2-v3
            else
                Sextant = 1; //sextant v1-v2

        } else {
            //quadrant II
            if (-one_by_sqrt3fp * beta > alpha)
                Sextant = 3; //sextant v3-v4
            else
                Sextant = 2; //sextant v2-v3
        }
    } else {
        if (alpha >= 0) {
            //quadrant IV
            if (-one_by_sqrt3fp * beta > alpha)
                Sextant = 5; //sextant v5-v6
            else
                Sextant = 6; //sextant v6-v1
        } else {
            //quadrant III
            if (one_by_sqrt3fp * beta > alpha)
                Sextant = 4; //sextant v4-v5
            else
                Sextant = 5; //sextant v5-v6
        }
    }

    switch (Sextant) {
        // sextant v1-v2
        case 1: {
            // Vector on-times
            fp12 t1 = alpha - one_by_sqrt3fp * beta;
            fp12 t2 = two_by_sqrt3fp * beta;

            // PWM timings
            *tA = (fp12(1.0f) - t1 - t2) * fp12(0.5f);
            *tB = *tA + t1;
            *tC = *tB + t2;
        } break;

        // sextant v2-v3
        case 2: {
            // Vector on-times
            fp12 t2 = alpha + one_by_sqrt3fp * beta;
            fp12 t3 = -alpha + one_by_sqrt3fp * beta;

            // PWM timings
            *tB = (fp12(1.0f) - t2 - t3) * fp12(0.5f);
            *tA = *tB + t3;
            *tC = *tA + t2;
        } break;

        // sextant v3-v4
        case 3: {
            // Vector on-times
            fp12 t3 = two_by_sqrt3fp * beta;
            fp12 t4 = -alpha - one_by_sqrt3fp * beta;

            // PWM timings
            *tB = (fp12(1.0f) - t3 - t4) * fp12(0.5f);
            *tC = *tB + t3;
            *tA = *tC + t4;
        } break;

        // sextant v4-v5
        case 4: {
            // Vector on-times
            fp12 t4 = -alpha + one_by_sqrt3fp * beta;
            fp12 t5 = -two_by_sqrt3fp * beta;

            // PWM timings
            *tC = (fp12(1.0f) - t4 - t5) * fp12(0.5f);
            *tB = *tC + t5;
            *tA = *tB + t4;
        } break;

        // sextant v5-v6
        case 5: {
            // Vector on-times
            fp12 t5 = -alpha - one_by_sqrt3fp * beta;
            fp12 t6 = alpha - one_by_sqrt3fp * beta;

            // PWM timings
            *tC = (fp12(1.0f) - t5 - t6) * fp12(0.5f);
            *tA = *tC + t5;
            *tB = *tA + t6;
        } break;

        // sextant v6-v1
        case 6: {
            // Vector on-times
            fp12 t6 = -two_by_sqrt3fp * beta;
            fp12 t1 = alpha + one_by_sqrt3fp * beta;

            // PWM timings
            *tA = (fp12(1.0f) - t6 - t1) * fp12(0.5f);
            *tC = *tA + t1;
            *tB = *tC + t6;
        } break;
    }

    // if any of the results becomes NaN, result_valid will evaluate to false
     int result_valid =0;
    //         *tA >= 0.0f && *tA <= onefp
    //      && *tB >= 0.0f && *tB <= onefp
    //      && *tC >= 0.0f && *tC <= onefp;
    return result_valid ? 0 : -1;
}

int SVM(float alpha, float beta, float* tA, float* tB, float* tC) {
    int Sextant;

    if (beta >= 0.0f) {
        if (alpha >= 0.0f) {
            //quadrant I
            if (one_by_sqrt3 * beta > alpha)
                Sextant = 2; //sextant v2-v3
            else
                Sextant = 1; //sextant v1-v2

        } else {
            //quadrant II
            if (-one_by_sqrt3 * beta > alpha)
                Sextant = 3; //sextant v3-v4
            else
                Sextant = 2; //sextant v2-v3
        }
    } else {
        if (alpha >= 0.0f) {
            //quadrant IV
            if (-one_by_sqrt3 * beta > alpha)
                Sextant = 5; //sextant v5-v6
            else
                Sextant = 6; //sextant v6-v1
        } else {
            //quadrant III
            if (one_by_sqrt3 * beta > alpha)
                Sextant = 4; //sextant v4-v5
            else
                Sextant = 5; //sextant v5-v6
        }
    }

    switch (Sextant) {
        // sextant v1-v2
        case 1: {
            // Vector on-times
            float t1 = alpha - one_by_sqrt3 * beta;
            float t2 = two_by_sqrt3 * beta;

            // PWM timings
            *tA = (1.0f - t1 - t2) * 0.5f;
            *tB = *tA + t1;
            *tC = *tB + t2;
        } break;

        // sextant v2-v3
        case 2: {
            // Vector on-times
            float t2 = alpha + one_by_sqrt3 * beta;
            float t3 = -alpha + one_by_sqrt3 * beta;

            // PWM timings
            *tB = (1.0f - t2 - t3) * 0.5f;
            *tA = *tB + t3;
            *tC = *tA + t2;
        } break;

        // sextant v3-v4
        case 3: {
            // Vector on-times
            float t3 = two_by_sqrt3 * beta;
            float t4 = -alpha - one_by_sqrt3 * beta;

            // PWM timings
            *tB = (1.0f - t3 - t4) * 0.5f;
            *tC = *tB + t3;
            *tA = *tC + t4;
        } break;

        // sextant v4-v5
        case 4: {
            // Vector on-times
            float t4 = -alpha + one_by_sqrt3 * beta;
            float t5 = -two_by_sqrt3 * beta;

            // PWM timings
            *tC = (1.0f - t4 - t5) * 0.5f;
            *tB = *tC + t5;
            *tA = *tB + t4;
        } break;

        // sextant v5-v6
        case 5: {
            // Vector on-times
            float t5 = -alpha - one_by_sqrt3 * beta;
            float t6 = alpha - one_by_sqrt3 * beta;

            // PWM timings
            *tC = (1.0f - t5 - t6) * 0.5f;
            *tA = *tC + t5;
            *tB = *tA + t6;
        } break;

        // sextant v6-v1
        case 6: {
            // Vector on-times
            float t6 = -two_by_sqrt3 * beta;
            float t1 = alpha + one_by_sqrt3 * beta;

            // PWM timings
            *tA = (1.0f - t6 - t1) * 0.5f;
            *tC = *tA + t1;
            *tB = *tC + t6;
        } break;
    }

    // if any of the results becomes NaN, result_valid will evaluate to false
    int result_valid =
            *tA >= 0.0f && *tA <= 1.0f
         && *tB >= 0.0f && *tB <= 1.0f
         && *tC >= 0.0f && *tC <= 1.0f;
    return result_valid ? 0 : -1;
}

// based on https://math.stackexchange.com/a/1105038/81278
float fast_atan2(float y, float x) {
    // a := min (|x|, |y|) / max (|x|, |y|)
    float abs_y = fabsf(y);
    float abs_x = fabsf(x);
    // inject FLT_MIN in denominator to avoid division by zero
    float a = std::min(abs_x, abs_y) / (std::max(abs_x, abs_y) + FLT_MIN);
    // s := a * a
    float s = a * a;
    // r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
    float r = ((-0.0464964749f * s + 0.15931422f) * s - 0.327622764f) * s * a + a;
    // if |y| > |x| then r := 1.57079637 - r
    if (abs_y > abs_x)
        r = 1.57079637f - r;
    // if x < 0 then r := 3.14159274 - r
    if (x < 0.0f)
        r = 3.14159274f - r;
    // if y < 0 then r := -r
    if (y < 0.0f)
        r = -r;

    return r;
}
