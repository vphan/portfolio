class Vp.Models.FlickrImage extends Backbone.Model

  imageUrl: (size) ->
    size ||= 'q'
    'http://farm' + @get('farm') + '.staticflickr.com/' + @get('server') + '/' + @get('id') + '_' + @get('secret') + '_' + size + '.jpg'

  imageBackgroundUrl: (size) ->
    'url(' + @imageUrl(size) + ')'