App.Collections.Deals = Backbone.Collection.extend({

	model: App.Models.Deal,

	// I need this to hit the route for deals
	// which gets all deals and sets each model as a deal
	getDeals: function() {
		deals = $.get('/deals').done();
		debugger;
	}

});