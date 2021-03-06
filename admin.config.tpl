<!-- BEGIN: MAIN -->

			<div id="admin-config" class="row-fluid">
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
<!-- BEGIN: EDIT -->
					<div class="block">
						<h5><i class="icon-cogs"></i> {PHP.L.Configuration}</h5>
						{ADMIN_CONFIG_EDIT_CUSTOM}
						<form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>{PHP.L.Parameter}</th>
										<th>{PHP.L.Value}</th>
										<th>{PHP.L.Action}</th>
									</tr>
								</thead>
<!-- BEGIN: ADMIN_CONFIG_ROW -->
<!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
								<tr>
									<td class="group_begin" colspan="3">
										<h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
									</td>
								</tr>
<!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
<!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
								<tr>
									<td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
									<td>
										{ADMIN_CONFIG_ROW_CONFIG}
										<div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
									</td>
									<td class="action centerall">
										<div class="btn-group">
											<a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax btn btn-{PHP.R.admin-config-buttonsize}">
												<i class="icon-refresh"></i> <span>{PHP.L.Reset}</span>
											</a>
										</div>
									</td>
								</tr>
<!-- END: ADMIN_CONFIG_ROW_OPTION -->
<!-- BEGIN: ADMIN_CONFIG_FIELDSET_END -->
								<tr>
									<td class="group_end" colspan="3"></td>
								</tr>
<!-- END: ADMIN_CONFIG_FIELDSET_END -->
<!-- END: ADMIN_CONFIG_ROW -->
								<tr>
									<td colspan="3">
										<button type="submit" class="btn btn-primary"><i class="icon-refresh"></i> {PHP.L.Update}</button>
									</td>
								</tr>
							</table>
						</form>
					</div>
<!-- END: EDIT -->

<!-- BEGIN: DEFAULT -->
				
<!-- BEGIN: ADMIN_CONFIG_COL -->
				<div class="span4">
					<div class="block">
						<h5><i class="icon-cog"></i> {ADMIN_CONFIG_COL_CAPTION}:</h5>
						<table class="table table-striped">
<!-- BEGIN: ADMIN_CONFIG_ROW -->
							<tr>
								<td class="ext-cell">
<!-- IF {PHP.R.admin-config-icons} -->
									<img src="<!-- IF {ADMIN_CONFIG_ROW_ICO} -->{ADMIN_CONFIG_ROW_ICO}<!-- ELSE -->{PHP.cfg.system_dir}/admin/img/plugins32.png<!-- ENDIF -->" alt="" class="visible-desktop" />
<!-- ENDIF -->
									<a href="{ADMIN_CONFIG_ROW_URL}" class="ajax thumbicons large strong">{ADMIN_CONFIG_ROW_NAME}</a>
<!-- IF {PHP.R.admin-config-descs} -->
									<p class="small">{ADMIN_CONFIG_ROW_DESC}</p>
<!-- ENDIF -->
								</td>
							</tr>
<!-- END: ADMIN_CONFIG_ROW -->
						</table>
					</div>
				</div>
<!-- END: ADMIN_CONFIG_COL -->

<!-- END: DEFAULT -->

			</div>
		
<!-- END: MAIN -->