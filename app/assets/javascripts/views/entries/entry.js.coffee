class Raffler.Views.Entry extends Backbone.View
	template: JST['entries/entry']
	tagName: 'li'

	initialize: ->
		@model.on('change', @render, this)
		@model.on('highlight', @highlightWinner, this)

	render: ->
		$(@el).html(@template(entry: @model))
		@

	highlightWinner: ->		
		@$('.winner').addClass('highlight')