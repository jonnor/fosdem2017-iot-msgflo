# MsgFlo demo @ FOSDEM 2017 IoT

## Installing

Flash ESP8266 devices with Arduino sketches.
    
    ./buttons/buttons.ino
    ./relay/relay.ino

Install Msgflo

    npm install

Install msgflo-python (optional)

    pip2 install -r requirements.txt

## Running

    export MSGFLO_BROKER=mqtt://localhost # or whatever the MQTT broker

For msgflo-python

    export PATH=$PATH:$HOME/.local/bin/
    export PYTHONPATH=/home/jon/.local/lib/python2.7/site-packages/
