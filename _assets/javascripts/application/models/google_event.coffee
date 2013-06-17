class Vp.Models.GoogleEvent extends Backbone.Model
  
  startDate: ->
    if d = @get('start')
      if dd = d.date
        console.log dd
        moment(dd).format('dddd, MMMM Do')


  startTime: ->
    if d = @get('start')
      if dd = d.dateTime
        moment(dd).format('LT')

  stopTime: ->
    if d = @get('end')
      if dd = d.dateTime
        moment(dd).format('LT')


  days: -> 
    if str = @get('recurrence')
      console.log str
      matches = /BYDAY=([^;]+);?/.exec(str)
      if matches
        return matches[1].split(',').join(' & ')

  frequency: ->
    if r = @get('recurrence')
      @get('recurrence')
      matches = /FREQ=([^;]+);?/.exec(r)
      if matches
        str = matches[1].toLowerCase()
        str = str.charAt(0).toUpperCase() + str.slice(1)
        return "(" + str + ")"

  recurrenceDays: ->
    if r = @get('recurrence')
      r


  displayString: ->
    if f = @frequency()
      _.compact([@days(), @timeString(), f]).join(' ')
    else
      @dateOrDateTime()

  dateOrDateTime: ->
    @startDate() || @timeString()
  
  timeString: ->
    if time = @startTime()
      _.compact([time, @stopTime()]).join(' to ')

  locationString: ->
    if l = @get('location')
      "@" + l
