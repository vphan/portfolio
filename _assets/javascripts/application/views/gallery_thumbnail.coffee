class Vp.Views.GalleryThumbnail extends Backbone.View
  tagName: 'li'
  
  render: ->
    @$el.html( JST['application/templates/gallery_thumbnail'](model: @model))
    @