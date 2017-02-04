#!/usr/bin/env python
import sys, os, json, logging
sys.path.append(os.path.abspath("."))
import gevent
import msgflo

class Toggle(msgflo.Participant):
  def __init__(self, role):
    self.current = False
    d = {
      'component': 'Invert',
      'label': 'True -> False and vica versa',
    }
    msgflo.Participant.__init__(self, d, role)

  def process(self, inport, msg):
    self.current = not self.current
    self.send('out', self.current)
    self.ack(msg)

if __name__ == '__main__':
  msgflo.main(Toggle)
