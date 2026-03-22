#include "shrandom.h"

unsigned long rand(unsigned long howsmall, unsigned long howbig) {
    int value = 0;

    for (int i = 0; i <= 63; i++) {
        int bit = analogRead(4) / 420;
        //Serial.println(i);
        value *= 2;
        value += bit;
    }
    value = (value % ((howbig+1)-howsmall)+howsmall);
    return value;
}
