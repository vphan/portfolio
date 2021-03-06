class Vp.Collections.FlickrImages extends Backbone.Collection

 initialize: (options) ->
   @photosetId = options.photosetId || '72157633540076637'

  url: ->
    'http://api.flickr.com/services/rest/?method=flickr.photosets.getPhotos&api_key=' + Vp.flickrApiKey + '&photoset_id=' + @photosetId + '&format=json&nojsoncallback=1&extras=title%2Cdescription'
  
  parse: (resp, xhr) ->
    if photoset = resp.photoset
      return photoset.photo

  model: Vp.Models.FlickrImage

