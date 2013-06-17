class Vp.Views.Gallery extends Backbone.View
  tagName: 'ul'
  className: 'images'

  initialize: (options) ->
    @collection.on "reset", @reRender, @
    return

  render: ->
    @$el.html('loading........')
    @

  reRender: ->
    @$el.empty()
    @collection.forEach (photo) =>
      view = new Vp.Views.GalleryThumbnail( model: photo, collection: @collection )
      @$el.append( view.render().el )
      @$('a').fancybox()
      return
    @