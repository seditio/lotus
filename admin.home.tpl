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
				<div class="span4">
					<div class="block">
						<h5><i class="icon-code"></i> Cotonti:</h5>
						<table class="table table-striped">
							<tr>
								<td>{PHP.L.Version}</td>
								<td class="text-right">{ADMIN_HOME_VERSION}</td>
							</tr>
							<tr>
								<td>{PHP.L.Database}</td>
								<td class="text-right">{ADMIN_HOME_DB_VERSION}</td>
							</tr>
							<tr>
								<td>{PHP.L.home_db_rows}</td>
								<td class="text-right">{ADMIN_HOME_DB_TOTAL_ROWS}</td>
							</tr>
							<tr>
								<td>{PHP.L.home_db_indexsize}</td>
								<td class="text-right">{ADMIN_HOME_DB_INDEXSIZE}</td>
							</tr>
							<tr>
								<td>{PHP.L.home_db_datassize}</td>
								<td class="text-right">{ADMIN_HOME_DB_DATASSIZE}</td>
							</tr>
							<tr>
								<td>{PHP.L.home_db_totalsize}</td>
								<td class="text-right">{ADMIN_HOME_DB_TOTALSIZE}</td>
							</tr>
							<tr>
								<td>{PHP.L.Plugins}</td>
								<td class="text-right">{ADMIN_HOME_TOTALPLUGINS}</td>
							</tr>
							<tr>
								<td>{PHP.L.Hooks}</td>
								<td class="text-right">{ADMIN_HOME_TOTALHOOKS}</td>
							</tr>
						</table>
					</div>
<!-- IF {PHP.cot_plugins_active.pagecom} -->
{PHP|pagecom('pagecom.admin','5','0','date','','','0')}
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.pagelist} -->
{PHP|pagelist('pagelist.admin','5','page_count DESC','page_count > 0','','','','TRUE','','TRUE')}
<!-- ENDIF -->
				</div>
				<div class="span8">
<!-- BEGIN: MAINPANEL -->
					{ADMIN_HOME_MAINPANEL}
<!-- END: MAINPANEL -->
				</div>

			</div>

<!-- END: MAIN -->