#include <avr/sleep.h>
#define LED_1 7
#define LED_2 4
#define LED_3 9
#define BUTTON_1 2
#define BUTTON_2 8

volatile uint32_t wdticks;
volatile uint8_t btn_press;
volatile uint8_t btn_state;
volatile uint8_t btn_rpt;

/* key debounce:
 *  one bit per key. Initial: state 0, ct 1. implements a 1-bit counter with CT
 *  (chose 1bit version here because WDT interval is quite long)
 *  pressed: state 0, ct 1; b 1 -> ct ~(1&1)=0, b=1&0=0, state 0, pressed |= 0
 *  pressed: state 0, ct 0; b 1 -> ct ~(0&1)=1, b=1, state 1, pressed |= 1
 *  pressed: state 1, ct 0; b 0 -> ct ~(1&0)=1, b=0, state 1, pressed |= 0
 *  pressed: state 1, ct 1; b 0 -> ct ~(1&1)=0, b=0, state 1, pressed |= 0
 *  unpressed: state 1, ct 0, b 1 -> ct ~(0&1)=1, b=1, state 0, pressed |= 0
 *  pressed: state 0, ct 1, b 1 -> ct ~(1&1)=0, b=0, state 0
 */
ISR(WDT_vect)
{
  static uint8_t ct0 = 0xFF, ct1 = 0xFF, rpt;
  uint8_t b = btn_state;
  wdticks++;
  if(!digitalRead(BUTTON_1)) {
    b ^= 1;
  }
  if(!digitalRead(BUTTON_2)) {
    b ^= 2;
  }
  ct0 = ~(ct0 & b);
  //ct1 = ct0 ^ (ct1 & b);
  b &= ct0;// & ct1;         
  btn_state ^= b;
  btn_press |= btn_state & b;  
  if(!btn_state) {
    rpt = 10;
  }
  if(--rpt == 0) {
    rpt = 10;
    btn_rpt = btn_state;
  }
}

uint32_t getWdticks(void) {
  uint32_t t;
  cli();
  t = wdticks;
  sei();
  return t;
}

ISR(PCINT1_vect) {
}

ISR(PCINT0_vect) {
}

void led(uint8_t led, bool state) {
  uint8_t pin;
  switch(led) {
    case 1:
      pin = LED_1;
      break;
    case 2:
      pin = LED_2;
      break;
    case 3:
      pin = LED_3;
      break;
    default:
      return;
  }
  digitalWrite(pin, !state);
}

void powerdown() {
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  sleep_enable();
  sleep_mode();
  sleep_disable();
}

void setup() {
  led(1, false);
  led(2, false);
  led(3, false);
  pinMode(LED_1, OUTPUT);
  pinMode(LED_2, OUTPUT);
  pinMode(LED_3, OUTPUT);
  pinMode(BUTTON_1, INPUT_PULLUP);
  pinMode(BUTTON_2, INPUT_PULLUP);
  cli();
  // Set the watchdog reset bit in the MCU status register to 0.
  MCUSR &= ~(1<<WDRF);  
  // Allow changes of watchdog configuration
  WDTCSR |= (1<<WDCE) | (1<<WDE);
  // Set watchdog clock prescaler bits to a value of 64ms
  // Enable watchdog as interrupt only (no reset).
  WDTCSR = (1<<WDP1) | (1<<WDIE);
  sei();
}

bool readKey(int key) {
  if(btn_press & key) {
    btn_press &= ~key;
    return true;
  }
  return false;
}

bool readKeyLong(int key) {
  if(btn_rpt & key) {
    btn_rpt &= ~key;
    return true;
  }
  return false;
}

void loop() {
  static uint8_t mode = 0;
  uint32_t tick = getWdticks();
  if(readKeyLong(1)) {
    mode++;
    if(mode > 3) {
      mode = 0;
    }
  }
  switch(mode) {
    case 0:
    led(3, (tick & 0x05) == 0x05);
    led(2, (tick & 0x03) == 0x03);
    led(1, tick & 0x01);
    break;
    case 1:
    led(3, (tick & 0x09) == 0x09);
    led(2, readKey(2));
    led(1, readKey(1));
    break;
    case 2:
    led(3, (tick & 0x11) == 0x11);
    led(2, !readKey(2));
    led(1, !readKey(1));
    break;
    default:
    break;    
  }
  
  powerdown();
}
