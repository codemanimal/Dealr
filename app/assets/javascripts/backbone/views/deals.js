App.Views.Deals = Backbone.Views.extend({
	el: 'deals-container',
	initialize: function() {
		console.log('Deals view created bro');
		this.collection.fetch();
		// this.renderAll;
	}
	// renderAll: function() {

	// }





});