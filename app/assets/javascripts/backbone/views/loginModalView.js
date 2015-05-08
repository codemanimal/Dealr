App.Views.LoginModalView = Backbone.View.extend({
	el: '#login',

	initialize: function() {
		console.log('login modal created bro');
		$('#login').on('click', '#sign-up-footer', this.renderModal);
	},

	renderModal: function() {
		$('#login').empty();
		$('#login').append($('#login-modal').html());
	},
	events: {
		'click #login-footer': 'showSignUp',
		'click .signup-button': 'nextForm'
	},

	showSignUp: function() {
		$('#login').empty();
		$('#login').append($('#sign-up-modal').html());
	},

	nextForm: function() {
		$('#login').empty();
		$('#login').append($('#sign-up-form').html());
	}

})