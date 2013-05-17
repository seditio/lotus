$().ready(function() {

	$('#topbar .btn-navbar').click(function()
	{
		$('.container-fluid:first').toggleClass('menu-hidden');
		$('#menu').toggleClass('hidden-phone');
	});

	$('#hdm a').click(function()
	{
		$('.container-fluid:first').toggleClass('menu-hidden');
		$('#menu').toggleClass('hidden-phone');
		return false;
	});
	$('#str a').click(function()
	{
		$('.container-fluid:first').toggleClass('fixed');
		return false;
	});
	
	$('#hdn a').click(function()
	{
		$('nav div.row-fluid').toggleClass('hide');
		return false;
	});
	
	$('li.loginout a').prepend('<i class="icon-lock" /> ').addClass('btn btn-mini btn-block disabled');

	$('div.block').each(function(){
		$(this).children(':gt(0)').wrapAll('<div class="wrapper" />');
	});
	
	$('table.table-striped tr:last-child td').css('border-bottom','1px solid #ddd');
	
	(function() {

		var $menu = $('nav div.row-fluid'),
			optionsList = '<option value="" selected>Go to..</option>';

		$menu.find('div.span2').each(function() {
			var $this   = $(this),
				$anchor = $this.children('a'),
				depth   = $this.parents('div.row-fluid').length - 1,
				indent  = '';

			if( depth ) {
				while( depth > 0 ) {
					indent += ' - ';
					depth--;
				}

			};

			optionsList += '<option value="' + $anchor.attr('href') + '">' + indent + ' ' + $anchor.text() + '</option>';
		}).end()
		.after('<select id="selectmenu">' + optionsList + '</select>');
		
		$('select#selectmenu').on('change', function() {
			window.location = $(this).val();
		});
		
	})();
	
	
	$(".adminconfigmore").each(function() {
		if ($(this).html())
			$(this).wrapInner('<span />');
	});
	
});