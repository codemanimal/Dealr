App.Views.DealView = Backbone.View.extend({
	initialize: function () {
		console.log('new deal view bro');
		// $('body').html('');
		this.template = HandlebarsTemplates['deal'];
		$('#main-view').html($('#deal-view').html());
		this.render();
		$('#about').on('click', this.showAbout);
		this.$el.on('click', this.showDetail);
	},
	render: function() {
		this.$el.html(this.template());
		var deal = this.$el.attr('class', 'deal-preview');
		$('#main-view').append(deal);
		var footer = $('#main-view-footer').html();
		$('.footer').remove();
		$('body').append(footer);
	},

	showAbout: function() {
		new App.Views.AboutView();
	},

	showDetail: function() {
		new App.Views.DealDetail();
	}

});