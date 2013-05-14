$().ready(function() {

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
	
});