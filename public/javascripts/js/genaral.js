$(document).ready(function() {

 		$.preloadCssImages();

		$(".dropdown li").hover(function(){
			var dropDown = $(this).children("ul");
			var ulWidth = dropDown.width();
			var liWidth = $(this).width();
			var posLeft = (liWidth - ulWidth)/2;
			dropDown.css("left",posLeft);		
		});	

		$("ul.tabs").tabs("> .tabcontent", {
			tabs: 'li', 
			effect: 'fade'
		});
		
	$(".recent_posts li:odd").addClass("odd");

	$(".row .col:first-child").addClass("alpha");
	$(".row .col:last-child").addClass("omega"); 
	
// toggle content
	$(".toggle_content").hide(); 
	
	$("h3.toggle").toggle(function(){
		$(this).addClass("active");
		}, function () {
		$(this).removeClass("active");
	});
	
	$("h3.toggle").click(function(){
		$(this).next(".toggle_content").slideToggle();
	});
	
	$(".table-price tr:even").addClass("even");
	
});
