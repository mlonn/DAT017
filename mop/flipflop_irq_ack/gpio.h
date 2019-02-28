#ifndef GPIO_H
#define GPIO_H
#include <stdint.h>
typedef struct {
    uint32_t moder;
    uint16_t otyper;        // +0x4
    uint16_t otReserved;    //
    uint32_t ospeedr;       // +0x8
    uint32_t pupdr;         // +0xc (12)
    uint8_t idrLow;         // +0x10
    uint8_t idrHigh;        // +0x11
    uint16_t idrReserved;   //
    uint8_t odrLow;         // +0x14
    uint8_t odrHigh;        // +0x15
    uint16_t odrReserved;
} GPIO;

#define GPIO_E (*((volatile GPIO*) 0x40021000))
#define GPIO_D (*((volatile GPIO*) 0x40020C00))

#endif GPIO_H