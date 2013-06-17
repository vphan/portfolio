class Vp.Views.UpcomingEvents extends Backbone.View
  tagName: 'ul'
  className: 'upcoming-events'
    
  initialize: (options) ->
    @collection.on "reset", @reRender, @
    return

  render: ->
    @$el.html('loading........')
    @

  reRender: ->
    @$el.empty()
    @collection.each (item) =>
      @$el.append( JST['application/templates/upcoming_events/item'](model: item) )
    @