function render_slideshow(){
  $("#galleria").galleria({
		autoplay: 3000,
		lightbox: false,
		popupLinks: true,
		showImagenav: true,
		showCounter: true,
		transition: "fade",
		preload: 3,
		transitionSpeed: 1500,
		width: 700, 
		height: 360,
		  thumbCrop: true,
    imageCrop: true,
    carousel: true,
    imagePan: false,
    clicknext: false,
		_locale: {
 			enter_fullscreen: "Enter fullscreen",
			exit_fullscreen: "Exit fullscreen",
			click_to_close: "Click to close",
			show_thumbnails: "Show thumbnails",
			show_info: "Show info"
		}
	});
}