#pragma once

class fp12 {
public:
    fp12() { val = 0; }

    fp12(int x) {
        val = x;
    }
    fp12(double x) {
        val = x*4096;
    }
    fp12(float x) {
        val = x*4096;
    }

    void operator=(int x) { val = x; }
     void operator=(float x) { val = x*4096; }

    fp12 operator *(const fp12 b) const {
        return fp12((val*b.val)/4096);
    }
    fp12 operator *(const int b) const {
        return fp12((val*b));
    }
    fp12 operator-() const {
        return fp12(-val);
    }
    fp12 operator-(fp12 b) const {
        return fp12(val - b.val);
    }
    fp12 operator+(fp12 b) const {
        return fp12(val + b.val);
    }
    bool operator==(fp12 b) const {
        return val == b.val;
    }
    bool operator<=(fp12 b) const {
        return val <= b.val;
    }
    bool operator>=(fp12 b) const {
        return val >= b.val;
    }
    bool operator<(fp12 b) const {
        return val < b.val;
    }
    bool operator>(fp12 b) const {
        return val > b.val;
    }

    bool operator==(int b) const {
        return val == b;
    }
    bool operator<=(int b) const {
        return val <= b;
    }
    bool operator>=(int b) const {
        return val >= b;
    }
    bool operator<(int b) const {
        return val < b;
    }
    bool operator>(int b) const {
        return val > b;
    }
    operator int() const {
        return val;
    }
    
    int val;
};