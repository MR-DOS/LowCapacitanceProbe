# LowCapacitanceProbe
1+ GHz AC Probe with low input capacitance (< 1 pF, hopefully)

2 dB flatness should be approx. 1.6 GHz, 6 dB flatness should be about 3.3 GHz. Design needs to be verified in reality (simulation is likely over-optimistic). In-band flatness should be better than 0.2 dB. Lower 6 dB corner should be at about 30 kHz.

Forked from FETProbe_V2 by makerprobe which is an improved fork of crteensy's FETProbe_tiny.

This project will try to make some usability improvements as well as (maybe) ability to use higher frequency transistor CF-739. However, there is no simulation model for CF-739, so it will have to be optimised empirically (and manually). U.fl connectors will probably be replaced by something a bit more sturdy (and each connector will be different). Contacts will probably be modified to allow soldering fixed needle for the input and pogo pin (maybe rotatable) for ground.
