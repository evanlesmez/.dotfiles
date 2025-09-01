POINTER_ID=$(xinput list | grep "BenQ ZOWIE BenQ ZOWIE Gaming Mouse" | grep "pointer" | grep -o 'id=[0-9]*' | cut -d'=' -f2)
echo $POINTER_ID
xinput set-prop $POINTER_ID "libinput Accel Profile Enabled" 0, 1, 0
xinput set-prop $POINTER_ID "libinput Accel Speed" -.675
