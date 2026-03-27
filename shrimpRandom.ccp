#include <shrimpRandom.h>

unsigned long shrimpRandom::generate(unsigned long howsmall, unsigned long howbig, int pin, int avg) {
    unsigned long value = 0;
    for (int i = 0; i <= 128; i++) {
        int bit = analogRead(pin) / avg;
        value *= 2;
        value += bit;
    }
    value = (value % ((howbig + 1) - howsmall) + howsmall);
    return value;
}
