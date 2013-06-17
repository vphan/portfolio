#= require_self

#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./templates

@Vp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  flickrApiKey: '8a67c1afab21c2d78452e81c88d2ea7d'
  
  # startSlideShow: (slides) =>
  #   slides.auto = window.setInterval( () ->
  #       slides.next()
  #       return
  #     10000
  #   )

  # stopSlideShow: (slides) =>
  #   if slides.auto
  #     window.clearInterval( slides.auto )    

  gallery: (el, photosetId) ->

    photosetId ||= '72157633540076637'

    collection = new Vp.Collections.FlickrImages( photosetId: photosetId )
    collection.fetch()

    gallery = new Vp.Views.Gallery( collection: collection)

    $(el).html( gallery.render().el )


    return