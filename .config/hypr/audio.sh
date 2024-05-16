#!/bin/bash

SINK_A=alsa_output.usb-Kingston_HyperX_Cloud_II_Wireless_000000000001-00.iec958-stereo
SINK_B=alsa_output.usb-Lenovo_ThinkPad_Thunderbolt_4_Dock_USB_Audio_000000000000-00.analog-stereo

SINK_A_ID=83
SINK_B_ID=58

# Function to count the number of sink inputs connected to a given sink
count_inputs_on_sink() {
    local sink=$1
    pactl list sink-inputs short | grep -c "$sink"
}

# Determine which sink has fewer inputs connected
if [ $(count_inputs_on_sink $SINK_A_ID) -lt $(count_inputs_on_sink $SINK_B_ID) ]; then
    DESIRED_SINK=$SINK_A
else
    DESIRED_SINK=$SINK_B
fi

# Get the list of all active sink inputs
SINK_INPUTS=$(pactl list sink-inputs short | awk '{print $1}')

# Loop through each sink input and move it to the desired sink
for INPUT_ID in $SINK_INPUTS; do
    pactl move-sink-input "$INPUT_ID" "$DESIRED_SINK"
    pactl set-default-sink "$DESIRED_SINK"
done

