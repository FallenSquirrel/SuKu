// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.facebox

$(document).ready(function() {
	var targetMenuLink = $(".highlight_menu_link").first().text();
	$(".menu_link").each(function(i) {
		if ($(this).attr("id") == targetMenuLink) {
			//$(this).addClass("");
			$(this).attr("class", "menu_link_page_active");
		}
	}
	);
}
);

function newWindow(url)
{
	window.open(url, '_blank');
}


jQuery(document).ready(function($) {
  $('a[rel*=facebox]').facebox()
  $(document).bind('reveal.facebox', function() {  
        $('#new_session').submit(function() {  
            $.post(this.action, $(this).serialize(), null, "script");  
            return false;  
        });  
    });  
})
