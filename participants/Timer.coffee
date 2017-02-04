msgflo = require 'msgflo-nodejs'

Timer = (client, role) ->

  definition =
    component: 'Timer'
    icon: 'file-word-o'
    label: 'When interval is non-0 emits data periodically'
    inports: [
      id: 'interval'
      type: 'number'
      description: 'Time between each sending (in milliseconds)'
      default: 0
      hidden: false
    ]
    outports: [
      id: 'out'
      type: 'bang'
    ]
  process = (inport, indata, send) ->
    return unless inport == 'interval'

    # Hack for storing state
    sendBang = () ->
        return send 'out', null, "!"

    clearInterval @interval if @interval? and @interval
    if indata != 0
        @interval = setInterval sendBang, indata

  part = new msgflo.participant.Participant client, definition, process, role
  originalStop = part.stop.bind part
  part.stop = (cb) ->
    part.send 'interval', 0
    return originalStop cb
  return part

module.exports = Timer
