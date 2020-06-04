$(document).ready(function() {
	$('.nav-list__item').hide();

	$('.js-show').click(function() {
		var navList = $(this);
		var showItems = navList.hasClass('is-open');
		$('.nav-list__item').slideUp();
		$('.nav-list').removeClass('is-open');
		if (showItems) {
			navList.find('.nav-list__item').slideUp();
		} else {
			navList.addClass('is-open');
			navList.find('.nav-list__item').slideDown();
		}
	});
});