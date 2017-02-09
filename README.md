# MsgFlo demo @ FOSDEM 2017 IoT

* [FOSDEM presentation, incl video](https://fosdem.org/2017/schedule/event/iot_msgflo/).
* [Notes](https://github.com/msgflo/msgflo/tree/master/doc/fosdem2017) 

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
