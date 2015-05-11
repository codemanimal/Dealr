App.Views.AboutView = Backbone.View.extend({
	initialize: function() {
		console.log('about view launched');
		$('#main-view').html($('#about-template').html());
		$('#back-to-deals').on('click', this.showDeals);
	},

	showDeals: function() {
		new App.Views.DealView();
	}

});