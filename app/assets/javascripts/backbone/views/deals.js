// App.Views.Deals = Backbone.Views.extend({
// 	el: 'deals-container',
// 	initialize: function() {
// 		console.log('Deals view created bro');
// 		this.listenTo(this.collection, 'reset', this.renderAll);		
// 	},
// 	renderAll: function() {
// 		this.$('#display').empty();
// 		this.collection.each(this.render, this);
// 	},
// 	render: function(deal) {
// 		this.$('#display').append(new App.Views.Deal({ model: deal }).$el);
// 	}
// });