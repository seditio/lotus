<!-- BEGIN: MAIN -->

			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>BBCodes</h5>
						{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		
						<form action="{ADMIN_BBCODE_UPDATE_URL}" method="post">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="coltop width25">{PHP.L.Name} / {PHP.L.adm_bbcodes_mode} / {PHP.L.Enabled} / {PHP.L.adm_bbcodes_container}</th>
										<th class="coltop width25">{PHP.L.adm_bbcodes_pattern}</th>
										<th class="coltop width20">{PHP.L.adm_bbcodes_replacement}</th>
										<th class="coltop width15">{PHP.L.Plugin} / {PHP.L.adm_bbcodes_priority} / {PHP.L.adm_bbcodes_postrender}</th>
										<th class="coltop width15">{PHP.L.Action}</th>
									</tr>
								</thead>
<!-- BEGIN: ADMIN_BBCODE_ROW -->
								<tr>
									<td class="centerall">
										{ADMIN_BBCODE_ROW_NAME}	{ADMIN_BBCODE_ROW_MODE} {ADMIN_BBCODE_ROW_ENABLED} {ADMIN_BBCODE_ROW_CONTAINER}
									</td>
									<td class="centerall">
										{ADMIN_BBCODE_ROW_PATTERN}
									</td>
									<td class="centerall">
										{ADMIN_BBCODE_ROW_REPLACEMENT}
									</td>
									<td class="centerall">
										<span style="display:block;">{ADMIN_BBCODE_ROW_PLUG}</span>
										{ADMIN_BBCODE_ROW_PRIO}
										{ADMIN_BBCODE_ROW_POSTRENDER}
									</td>
									<td class="centerall">
										<button class="btn btn-{PHP.R.admin-config-buttonsize}" type="button" onclick="if(confirm('{PHP.L.adm_bbcodes_confirm}')) location.href='{ADMIN_BBCODE_ROW_DELETE_URL}'">
											<i class="icon-remove"></i> <span>{PHP.L.Delete}</span>
										</button>
									</td>
								</tr>
<!-- END: ADMIN_BBCODE_ROW -->
							</table>
							<button onclick="" class="btn btn-success" type="submit">
								<i class="icon-refresh"></i> Обновить
							</button>
						</form>
						<p class="text-center">{PHP.L.Total}: {ADMIN_BBCODE_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_BBCODE_COUNTER_ROW}</p>
						<div class="pagination pagination-{PHP.R.admin-config-pagisize} pagination-{PHP.R.admin-config-pagialign}">
							<ul>{ADMIN_BBCODE_PAGINATION_PREV}{ADMIN_BBCODE_PAGNAV}{ADMIN_BBCODE_PAGINATION_NEXT}</ul>
						</div>
					</div>
			
					<div class="block">
						<h5>{PHP.L.adm_bbcodes_new}:</h5>
						<form action="{ADMIN_BBCODE_FORM_ACTION}" method="post">
						<table class="table table-bordered">
							<thead>
							<tr>
								<th class="coltop width25">{PHP.L.Name} / {PHP.L.adm_bbcodes_mode} / {PHP.L.adm_bbcodes_container}</th>
								<th class="coltop width25">{PHP.L.adm_bbcodes_pattern}</th>
								<th class="coltop width20">{PHP.L.adm_bbcodes_replacement}</th>
								<th class="coltop width15">{PHP.L.adm_bbcodes_priority} / {PHP.L.adm_bbcodes_postrender}</th>
								<th class="coltop width15">{PHP.L.Action}</th>
							</tr>
							</thead>
							<tr>
								<td class="centerall">
									{ADMIN_BBCODE_NAME} &nbsp;{ADMIN_BBCODE_MODE} &nbsp;{ADMIN_BBCODE_CONTAINER}
								</td>
								<td class="centerall">{ADMIN_BBCODE_PATTERN}</td>
								<td class="centerall">{ADMIN_BBCODE_REPLACEMENT}</td>
								<td class="centerall">{ADMIN_BBCODE_PRIO} &nbsp;{ADMIN_BBCODE_POSTRENDER}</td>
								<td class="centerall"><input type="submit" value="{PHP.L.Add}" /></td>
							</tr>
						</table>
						</form>
					</div>
					<div class="block">
						<h5>{PHP.L.adm_bbcodes_other}:</h5>
						<ul>
							<li><a href="{ADMIN_BBCODE_URL_CLEAR_CACHE}" onclick="return confirm('{PHP.L.adm_bbcodes_clearcache_confirm}')">{PHP.L.adm_bbcodes_clearcache}</a></li>
							<!-- BEGIN: ADMIN_BBCODE_CONVERT -->
							<li><a href="{ADMIN_BBCODE_CONVERT_URL}" onclick="return confirm('{PHP.L.adm_bbcodes_convert_confirm}')">{ADMIN_BBCODE_CONVERT_TITLE}</a></li>
							<!-- END: ADMIN_BBCODE_CONVERT -->
						</ul>
					</div>
				</div>
			</div>
			
<!-- END: MAIN -->