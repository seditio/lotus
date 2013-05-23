<!-- BEGIN: MAIN -->

			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>{PHP.L.adm_extrafields}</h5>

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: TABLELIST -->	
						<table class="table table-bordered">
							<!-- BEGIN: ROW -->	
							<tr>
								<td><a href="{ADMIN_EXTRAFIELDS_ROW_TABLEURL}">{ADMIN_EXTRAFIELDS_ROW_TABLENAME}</a></td>
							</tr>
							<!-- END: ROW -->
						</table>
						<div class="btn-group"><a class="btn btn-primary" href="{ADMIN_EXTRAFIELDS_ALLTABLES}">{PHP.L.adm_extrafields_all}</a></div>
<!-- END: TABLELIST -->

<script type="text/javascript">
//<![CDATA[
	var exFLDHELPERS = "{ADMIN_EXTRAFIELDS_TAGS}";
	var exnovars = "{PHP.L.adm_extrafields_help_notused}";
	var exvariants = "{PHP.L.adm_extrafields_help_variants}";
	var exrange = "{PHP.L.adm_extrafields_help_range}";
	var exdata = "{PHP.L.adm_extrafields_help_data}";
	var exregex = "{PHP.L.adm_extrafields_help_regex}";
	var exfile = "{PHP.L.adm_extrafields_help_file}";
	var exseparator = "{PHP.L.adm_extrafields_help_separator}";

	$(document).ready(function(){
		$('.exfldtype').live("change", function(){
			var exParent = $(this).closest('tr');
			var exvalid =  $(this).attr('value');
			if(exvalid == 'select' || exvalid == 'radio' || exvalid == 'checklistbox')
			{
				$(exParent).find('.exfldvariants').attr('title',exvariants);
				$(exParent).find('.exfldvariants').removeAttr("disabled");
			}
			else
			{
				$(exParent).find('.exfldvariants').attr('title', exnovars);
				$(exParent).find('.exfldvariants').attr('disabled', 'disabled');

			}
			switch(exvalid)
			{
				case 'input':
					$(exParent).find('.exfldparams').attr('title',exregex);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'inputint':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'currency':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'double':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'textarea':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'select':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'checkbox':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'radio':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'datetime':
					$(exParent).find('.exfldparams').attr('title',exdata);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'file':
					$(exParent).find('.exfldparams').attr('title',exfile);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'country':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'range':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'checklistbox':
					$(exParent).find('.exfldparams').attr('title',exseparator);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
			}
			if($(exParent).find('.exfldname').attr('value') != '')
			{
				var exhelper = $(exParent).find('.exfldname').attr('value').toUpperCase();
				exhelper = exFLDHELPERS.replace(/XXXXX/g, exhelper);
				$(exParent).find('.exfldname').attr('title',exhelper);
				$(exParent).find('.exflddesc').attr('title',exhelper);
			}
			else
			{
				$(exParent).find('.exfldname').removeAttr("title");
				$(exParent).find('.exflddesc').removeAttr("title");
			}
		});
		 $(".exfldtype").change();
	});
	
;
//]]>
</script>

<!-- BEGIN: TABLE -->	
						<form action="{ADMIN_EXTRAFIELDS_URL_FORM_EDIT}" method="post">
							<table class="table table-bordered">
								<thead>
								<tr>
									<th class="">#</th>
									<th class="">{PHP.L.extf_Name}</th>
									<th class="">{PHP.L.extf_Type}</th>
									<th class="">{PHP.L.adm_extrafield_params}</th>
									<th class="">{PHP.L.Action}</th>
								</tr>
								</thead>
								<!-- BEGIN: EXTRAFIELDS_ROW -->	
								<tr id="ex{ADMIN_EXTRAFIELDS_ROW_ID}">
									<td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
										{ADMIN_EXTRAFIELDS_ROW_ENABLED}
									</td>
									<td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
											{ADMIN_EXTRAFIELDS_ROW_NAME}
										<p class="small">{PHP.L.extf_Description}</p>
											{ADMIN_EXTRAFIELDS_ROW_DESCRIPTION}
										<p class="small">{PHP.L.extf_Base_HTML}</p>
											{ADMIN_EXTRAFIELDS_ROW_HTML}
									</td>
									<td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
											{ADMIN_EXTRAFIELDS_ROW_SELECT}
										<p class="small">{PHP.L.adm_extrafield_parse}</p>
											{ADMIN_EXTRAFIELDS_ROW_PARSE}
										<p class="small">{ADMIN_EXTRAFIELDS_ROW_REQUIRED}{PHP.L.adm_extrafield_required}</p>

									</td>
									<td class="{ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
										{ADMIN_EXTRAFIELDS_ROW_PARAMS}
										<p class="small">{PHP.L.adm_extrafield_selectable_values}</p>
											{ADMIN_EXTRAFIELDS_ROW_VARIANTS}						
										<p class="small">{PHP.L.adm_extrafield_default}</p>
											{ADMIN_EXTRAFIELDS_ROW_DEFAULT}
									</td>
									<td class="centerall {ADMIN_EXTRAFIELDS_ROW_ODDEVEN}">
										<a title="{PHP.L.Delete}" href="{ADMIN_EXTRAFIELDS_ROW_DEL_URL}" class="ajax btn btn-danger btn-small"><i class="icon-remove"></i> {PHP.L.Delete}</a>
									</td>
								</tr>
								<!-- END: EXTRAFIELDS_ROW -->
								<tr>
									<td class="valid" colspan="5">
										<button type="submit" onclick="location.href='{ADMIN_EXTRAFIELDS_ROW_FORM_URL}'" class="confirm btn btn-primary">{PHP.L.Update}</button>
									</td>
								</tr>
							</table>
						</form>
<!-- IF {ADMIN_EXTRAFIELDS_PAGNAV} -->
						<div class="pagination pagination-small pagination-center">
							<ul>{ADMIN_EXTRAFIELDS_PAGINATION_PREV}{ADMIN_EXTRAFIELDS_PAGNAV}{ADMIN_EXTRAFIELDS_PAGINATION_NEXT}</ul>
						</div>
<!-- ENDIF -->
						<p class="text-center">{PHP.L.Total}: {ADMIN_EXTRAFIELDS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_EXTRAFIELDS_COUNTER_ROW}</p>


						<h6>{PHP.L.adm_extrafield_new}:</h6>
						<form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="width30">{PHP.L.extf_Name}</th>
										<th class="width20">{PHP.L.extf_Type}</th>
										<th class="width40">{PHP.L.adm_extrafield_params}</th>
									</tr>
								</thead>
								<tr id="exnew">
									<td>
										{ADMIN_EXTRAFIELDS_NAME}
										<p class="small">{PHP.L.extf_Description}</p>
												{ADMIN_EXTRAFIELDS_DESCRIPTION}
										<p class="small">{PHP.L.extf_Base_HTML}</p>
											{ADMIN_EXTRAFIELDS_HTML}	
									</td>
									<td>
										{ADMIN_EXTRAFIELDS_SELECT}
										<p class="small">{PHP.L.adm_extrafield_parse}</p>
											{ADMIN_EXTRAFIELDS_PARSE}
										<p class="small">{ADMIN_EXTRAFIELDS_REQUIRED}{PHP.L.adm_extrafield_required}</p>
									</td>
									<td>
										{ADMIN_EXTRAFIELDS_PARAMS}
										<p class="small">{PHP.L.adm_extrafield_selectable_values}</p>
												{ADMIN_EXTRAFIELDS_VARIANTS}					
										<p class="small">{PHP.L.adm_extrafield_default}</p>
											{ADMIN_EXTRAFIELDS_DEFAULT}
									</td>
								</tr>
								<tr>
									<td class="valid" colspan="3">
										<p class=""><input type="checkbox" name="field_noalter" /> {PHP.L.adm_extrafield_noalter}</p>
										<button type="submit" class="confirm btn btn-primary">{PHP.L.Add}</button>
									</td>
								</tr>
							</table>
						</form>
<!-- END: TABLE -->

					</div>
				</div>
			</div>

<!-- END: MAIN -->