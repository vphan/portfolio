class Vp.Collections.GoogleEvents extends Backbone.Collection

	model: Vp.Models.GoogleEvent

	url: ->
		'https://www.googleapis.com/calendar/v3/calendars/3b42dtpn8l55iabmau44u23k1c@group.calendar.google.com/events?key=AIzaSyCpHBzzdz_WNdFZ-_4V-7ZjoBCgwrukSxo'

	parse: (resp, xhr) ->
    	return resp.items