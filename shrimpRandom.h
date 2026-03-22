#ifndef shrimpRandom_h
#define shrimpRandom_h

#include "Arduino.h"

class shrimpRandom {
  public:
    static unsigned long generate(unsigned long howsmall, unsigned long howbig, int pin, int avg);
};

#endif
