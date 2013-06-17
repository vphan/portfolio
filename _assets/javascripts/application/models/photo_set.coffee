class Vp.Models.PhotoSet extends Backbone.Model


  url: ->
    'http://api.flickr.com/services/rest/?method=flickr.photosets.getPhotos&api_key=' + Vp.flickrApiKey + '&photoset_id=' + @id + '&format=json&nojsoncallback=1'
  
  parse: (resp, xhr) ->
    return resp.photoset

  photos: ->
    new Vp.Collections.Photos( collection: @get("photo") )