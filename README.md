# LowCapacitanceProbe

## THIS DESIGN IS STILL UNDER CONSTRUCTION, ANY EXPORTED DATA ARE NON-FINAL AND ARE LIKELY NOT TO WORK. DO NOT ATTEMPT TO BUILD THIS DEVICE UNTIL THIS NOTICE DISAPPEARS! ALL IMAGES ARE PLACEHOLDERS AND MAY NOT FULLY REPRESENT THE REAL DEVICE AND MAY BE OUT OF SYNC WITH THE DESIGN DATA! USABLE DATA WILL BE PRESENT IN RELEASES TAB.

1+ GHz AC Probe with low input capacitance (less than 1 pF, hopefully)

2 dB flatness should be approx. 1.6 GHz, 3 dB flatness should be about 2.1 GHz, 6 dB flatness should be about 3.3 GHz. Design needs to be verified in reality (simulation is likely over-optimistic). In-band flatness should be better than 0.2 dB. Lower 6 dB corner should be at about 30 kHz while 3 dB corner is at about 50 kHz. The design should have fairly low noise, at least above 1 MHz.

## Expected issues

* Large noise at < 1 MHz due to thermal noise of 1M bias resistor
* Incorrect impedance of 50R traces
* Incorrect output impedance
* Possible instability of BF998 / spectrum peaking
* Bad linearity, especially due to use of varactor and resistor instead of current sink in source of BF998
* Large variance of parameters due to use of BF998

## Known issues which will be present

* No box yet (has to be covered in conductive material)
* Usage of obsolete part which is difficult to obtain (BF998)
* Component values not tried, will be suboptimal
* Varactor will probably need to be changed
* Needed manual calibration using a VNA and some tools
* Potentiometers not delinearised yet

## Board images (rendered)

![Board image TOP](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/Images_render/top.png)

![Board image BOT](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/Images_render/bot.png)

## Schematic

[Schematic SVG](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/Schematic/LowCapacitanceProbe.svg)

[Schematic PDF](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/Schematic/LowCapacitanceProbe.pdf)

![Schematic PNG, decent resolution](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/Schematic/LowCapacitanceProbe.png)

## 3D models

[STEP with solder mask, pads and copper fills](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/3D/board.step)

[Simplified STEP](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/3D/simplified/simplified.step)

## Board Shape

[DXF with board shape](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/DXF/LowCapacitanceProbe-Edge_Cuts.dxf)

## Gerbers for production

[Zipped Gerbers](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/Gerbers/ZIP/LowCapacitanceProbe_v1.0.0.zip)

[Non-zipped Gerbers](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/Gerbers/)

## BOM

[Interactive BOM](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/BOM/LowCapacitanceProbe_Interactive_BOM.html)

[CSV BOM](https://github.com/MR-DOS/LowCapacitanceProbe/raw/main/Exports/BOM/LowCapacitanceProbe.csv)

## Sources for this design

Forked from [FETProbe_V2](https://github.com/makerprobe/FETProbe_V2) by makerprobe which is an improved fork of crteensy's [FETProbe_tiny](https://github.com/crteensy/FETProbe_tiny). Some ideas are taken from the FETProbe_V2, but most of the core design was changed to allow precise gain tuning, also the original design was suffering from being near stability threshold (and thus probably required the "spike filter").

The probe is also somewhat similar to my older [E-field probe](https://hackaday.io/project/169611-simple-e-field-probe) (which was just an unfinished toy for sniffing around circuits contactless) which is older than crteensy's FETProbe, but used G1 instead of G2 of BF998.

The need for stabilising resistors was found in another, even older project of mine, the [cheap TDR](https://github.com/MR-DOS/TDR_diploma_thesis). BF998 in source follower mode is prone to oscillation, especially when high impedance of capacitive characteristic is connected to its input.

## Intention of this design

First of all - I wanted to try the new KiCAD 8 and 9. It is also a development tool to make and tune a reusable jobset, design rules and checklist for checking validity of design (will be published later).

This project will try to make some RF optimalizations, usability improvements as well as (maybe) ability to use higher frequency transistor CF-739. However, there is no simulation model for CF-739, so it will have to be optimised empirically (and manually). Also, it is discontinued (like the BF998) and hard to obtain, rendering it unusable for making more than a few pieces of this probe.

Another path for improvement is to try using a JFET whch is still in production (J3xx or 2N439x).

Ability to tune the device (gain, output impedance) will be made to allow precise operation without fiddling with replacing components.