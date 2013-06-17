class Vp.Views.Products extends Backbone.View
  tagName: 'ul'
  className: 'products'

  initialize: (options) ->
    @collection.on "reset", @reRender, @
    return

  render: ->
    @$el.html('loading........')
    @

  reRender: ->
    @$el.empty()
    @collection.forEach (product) =>
      view = new Vp.Views.Product( model: product, collection: @collection )
      @$el.append( view.render().el )
      return
    @