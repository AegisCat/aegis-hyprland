#!/bin/bash

# Wait for WirePlumber to initialize
sleep 5

# Fix silent Pro Audio on boot by toggling away and back
pactl set-card-profile alsa_card.pci-0000_0b_00.6 output:analog-stereo+input:analog-stereo
sleep 2
pactl set-card-profile alsa_card.pci-0000_0b_00.6 pro-audio
