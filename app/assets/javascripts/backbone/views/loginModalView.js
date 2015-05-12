App.Views.LoginModalView = Backbone.View.extend({
	el: '#main-view',

	initialize: function() {
		console.log('login modal created bro');
		$('#main-view').on('click', '#sign-up-footer', this.renderModal);
	},

	renderModal: function() {
		$('#main-view').empty();
		$('#main-view').append($('#login-modal').html());
	},
	events: {
		'click #login-footer': 'showSignUp',
		// 'click #signup-button': 'nextForm',
		'click #sign-in-button': 'showDeals',
		'click #start-shopping-button': 'showDeals'

	},

	showSignUp: function() {
		$('#main-view').empty();
		$('#main-view').append($('#sign-up-modal').html());
	},

	// nextForm: function() {
	// 	$('#main-view').empty();
	// 	$('#main-view').append($('#sign-up-form').html());
	// },

	showDeals: function() {
		// debugger;
		$('#main-view').empty();
		// var dealCollection = new App.Collections.Deals
		var dealView = new App.Views.DealView({ collection: new App.Collections.Deals });
		// debugger;
	}

})