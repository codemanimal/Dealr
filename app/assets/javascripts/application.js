// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require underscore
//= require backbone
//= require handlebars
//= require_self
//= require_tree ./backbone/routers
//= require_tree ./backbone/models
//= require_tree ./backbone/collections
//= require_tree ./backbone/views
//= require_tree ./templates
//= require_tree .
var App = {
	Models: {}, 
	Collections: {}, 
	Views: {}, 
	Routers: {}
};

$(function() {
	console.log('loaded bro');
	// var collection = new App.Collections.Deals;
	// $('#main-view').append($('#sign-up-modal').html());
	// var loginModalView = new App.Views.LoginModalView();

	new App.Views.AboutView();
	// $('#back-to-deals').on('click', console.log('deleting about'));
	// BV.getPlayer().pause();
 //  var BV = new $.BigVideo();
 //  BV.init();
 //  BV.show('http://vjs.zencdn.net/v/oceans.mp4');
});