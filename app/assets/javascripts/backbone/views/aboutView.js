App.Views.AboutView = Backbone.View.extend({
	initialize: function() {
		console.log('about view launched');
		$('#about').on('click', this.showAbout);
		// this.on('click', '#back-to-deals', this.showDeals());
		// debugger;
		// $('#back-to-deals').on('click', this.showDeals());
	},

	showAbout: function() {
		console.log('rendering about view');
		// $('body').empty();
		about = $('body').html($('#about-template').html());
		// debugger;
	},

	events: {
		'click #back-to-deals': 'showDeals'
	},

	showDeals: function() {
		console.log('going back');
		// $.get('/deals');
	}

});