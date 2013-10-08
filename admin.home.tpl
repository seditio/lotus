<!-- BEGIN: MAIN -->

<!-- BEGIN: UPDATE -->
			<div class="row-fluid">
				<div class="span12">
					<div class="alert alert-warning">
						<h4>{PHP.L.adminqv_update_notice}:</h4>
						<p>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
					</div>
				</div>
			</div>
<!-- END: UPDATE -->

<!-- IF {ERROR_ROW_MSG} -->
			<div class="row-fluid">
				<div class="span12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
				</div>
			</div>
<!-- ENDIF -->

			<div class="row-fluid">
				<div class="span8">
<!-- BEGIN: MAINPANEL -->
					{ADMIN_HOME_MAINPANEL}
<!-- END: MAINPANEL -->
<!-- IF {PHP.cot_plugins_active.pagelist} -->
{PHP|pagelist('pagelist.admin','5','page_count DESC','page_count > 0','','','','TRUE','','TRUE')}
<!-- ENDIF -->
				</div>
				<div class="span4">
					<div class="block">
						<h5><i class="icon-code"></i> {PHP.L.Database}:</h5>
						<table class="table table-striped">
							<tr>
								<td>{PHP.adminstats.database.title}</td>
								<td class="text-right">{PHP.adminstats.database.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.mysqlcharset.title}</td>
								<td class="text-right">{PHP.adminstats.mysqlcharset.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.db_counts.title}</td>
								<td class="text-right">{PHP.adminstats.db_counts.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.db_rows.title}</td>
								<td class="text-right">{PHP.adminstats.db_rows.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.db_indexsize.title}</td>
								<td class="text-right">{PHP.adminstats.db_indexsize.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.db_datassize.title}</td>
								<td class="text-right">{PHP.adminstats.db_datassize.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.db_totalsize.title}</td>
								<td class="text-right">{PHP.adminstats.db_totalsize.value}</td>
							</tr>
						</table>
					</div>
					<div class="block">
						<h5><i class="icon-code"></i> {PHP.L.Extensions}:</h5>
						<table class="table table-striped">
							<tr>
								<td>{PHP.adminstats.active_modules.title}</td>
								<td class="text-right">{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.active_plugins.title}</td>
								<td class="text-right">{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.active_hooks.title}</td>
								<td class="text-right">{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</td>
							</tr>
						</table>
					</div>
					<div class="block">
						<h5><i class="icon-code"></i> {PHP.L.Cache}:</h5>
						<table class="table table-striped">
							<tr>
								<td>{PHP.adminstats.cache.title}</td>
								<td class="text-right lower">{PHP.adminstats.cache.value}</td>
							</tr>
<!-- IF {PHP.adminstats.cache.value} != {PHP.L.Disabled} -->
							<tr>
								<td>{PHP.adminstats.cache_drv.title}</td>
								<td class="text-right">{PHP.adminstats.cache_drv.value}</td>
							</tr>
<!-- ENDIF -->
							<tr>
								<td>{PHP.adminstats.xtpl_cache.title}</td>
								<td class="text-right lower">{PHP.adminstats.xtpl_cache.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.html_cleanup.title}</td>
								<td class="text-right lower">{PHP.adminstats.html_cleanup.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.cache_index.title}</td>
								<td class="text-right lower">{PHP.adminstats.cache_index.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.cache_page.title}</td>
								<td class="text-right lower">{PHP.adminstats.cache_page.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.cache_forums.title}</td>
								<td class="text-right lower">{PHP.adminstats.cache_forums.value}</td>
							</tr>
						</table>
					</div>
					<div class="block">
						<h5><i class="icon-code"></i> {PHP.L.Security}:</h5>
						<table class="table table-striped">
							<tr>
								<td>{PHP.adminstats.ipcheck.title}</td>
								<td class="text-right lower">{PHP.adminstats.ipcheck.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.authcache.title}</td>
								<td class="text-right lower">{PHP.adminstats.authcache.value}</td>
							</tr>
							<tr>
								<td>{PHP.adminstats.useremailduplicate.title}</td>
								<td class="text-right lower">{PHP.adminstats.useremailduplicate.value}</td>
							</tr>
						</table>
					</div>
<!-- IF {PHP.cot_plugins_active.pagecom} -->
{PHP|pagecom('pagecom.admin','5','0','date','','','0')}
<!-- ENDIF -->
				</div>
			</div>

<!-- END: MAIN -->