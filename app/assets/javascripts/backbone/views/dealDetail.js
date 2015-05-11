App.Views.DealDetail = Backbone.View.extend({
	initialize: function() {
		console.log('deal detail rendering');
		this.template = HandlebarsTemplates['dealDetail'];
		$('#main-view').html($('#deal-view').html());
		this.render();
	},

	render: function() {
		console.log('rendering deal');
		this.$el.html(this.template());
		var deal = this.$el.attr('class', 'deal-description');
		$('#main-view').append(deal);
	},
	events: {
		'click #save-deal-button': 'saveDeal'
	},

	saveDeal: function() {
		console.log('saving deal');
		// Save deal to users ID
		// Show that deal was saved
		$('#main-view').html($('#deal-saved-modal').html());
		// return to deals view -- NEED TO DELAY THIS BY FEW SECONDS
		new App.Views.DealView();
	}



});