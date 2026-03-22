#ifndef shrimpRandom_h
#define shrimpRandom_h

#include "Arduino.h"

class shrimpRandom {
  public:
    static unsigned long generate(unsigned long howsmall, unsigned long howbig, int pin, int avg) {
        unsigned long value = 0;
        for (int i = 0; i <= 63; i++) {
            int bit = analogRead(pin) / avg;
            value *= 2;
            value += bit;
        }
        value = (value % ((howbig + 1) - howsmall) + howsmall);
        return value;
    }
};

#endif
