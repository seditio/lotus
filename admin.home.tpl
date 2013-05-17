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

			<div class="row-fluid">
				<div class="span12">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
				</div>
			</div>

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
				</div>
				<div class="span4">
<!-- BEGIN: MAINPANEL -->
					{ADMIN_HOME_MAINPANEL}
<!-- END: MAINPANEL -->
				</div>
				<div class="span4">
					<div class="block">
						<h5><i class="icon-cogs"></i> {PHP.L.home_ql_b1_title}</h5>
						<ul class="unstyled">
							<li><i class="icon-li icon-ok"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}">{PHP.L.home_ql_b1_1}</a></li>
							<li><i class="icon-li icon-ok"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}">{PHP.L.home_ql_b1_2}</a></li>
							<li><i class="icon-li icon-ok"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}">{PHP.L.home_ql_b1_3}</a></li>
							<li><i class="icon-li icon-ok"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=menus')}">{PHP.L.home_ql_b1_4}</a></li>
							<li><i class="icon-li icon-ok"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=locale')}">{PHP.L.Locale}</a></li>
							<li><i class="icon-li icon-ok"></i><a href="{PHP|cot_url('admin','m=extrafields')}">{PHP.L.adm_extrafields}</a></li>
						</ul>
					</div>
	<!-- BEGIN: SIDEPANEL -->
					{ADMIN_HOME_SIDEPANEL}
	<!-- END: SIDEPANEL -->
				</div>
			</div>

<!-- END: MAIN -->