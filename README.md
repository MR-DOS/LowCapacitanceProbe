# LowCapacitanceProbe

# THIS DESIGN IS STILL UNDER CONSTRUCTION, ANY EXPORTED DATA ARE NON-FINAL AND ARE LIKELY NOT TO WORK. DO NOT ATTEMPT TO BUILD THIS DEVICE UNTIL THIS NOTICE DISAPPEARS!

1+ GHz AC Probe with low input capacitance (no more than 1 pF, hopefully)

2 dB flatness should be approx. 1.6 GHz, 3 dB flatness should be about 2.1 GHz, 6 dB flatness should be about 3.3 GHz. Design needs to be verified in reality (simulation is likely over-optimistic). In-band flatness should be better than 0.2 dB. Lower 6 dB corner should be at about 30 kHz while 3 dB corner is at about 50 kHz. The design should have fairly low noise, at least above 1 MHz.

![Board image TOP](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/Images_render/top.png)

![Board image BOT](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/Images_render/bot.png)

## Sources for this design

Forked from FETProbe_V2 by makerprobe which is an improved fork of crteensy's FETProbe_tiny.

https://github.com/makerprobe/FETProbe_V2

https://github.com/crteensy/FETProbe_tiny

Some ideas are taken from the FETProbe_V2, but most of the core design was changed to allow precise gain tuning, also the original design was suffering from being near stability threshold (and thus probably required the "spike filter").

The probe is also somewhat similar to my older E-field probe (which was just an unfinished toy for sniffing around circuits contactless).
https://hackaday.io/project/169611-simple-e-field-probe

The need for stabilising resistors was found in another, even older project of mine, the cheap TDR. BF998 in source follower mode is prone to oscillation, especially when high impedance of capacitive characteristic is connected to its input.
https://github.com/MR-DOS/TDR_diploma_thesis

## Intention of this design

This project will try to make some RF optimalizations, usability improvements as well as (maybe) ability to use higher frequency transistor CF-739. However, there is no simulation model for CF-739, so it will have to be optimised empirically (and manually). U.fl connectors will probably be replaced by something a bit more sturdy (and each connector will be different). Contacts will probably be modified to allow soldering fixed needle for the input and pogo pin (maybe rotatable) for ground.
