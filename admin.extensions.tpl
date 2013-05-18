<!-- BEGIN: MAIN -->

			<div class="row-fluid">

{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: DEFAULT -->
				<div class="block">
					<h5>Extensions Control</h5>
					<div class="btn-group item-control">
						<a class="btn btn-primary <!-- IF {ADMIN_EXTENSIONS_SORT_ALP_SEL} -->special<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_ALP_URL}"><i class="icon-font"></i> <span>{PHP.L.adm_sort_alphabet}</span></a>
						<a class="btn btn-primary <!-- IF {ADMIN_EXTENSIONS_SORT_CAT_SEL} -->special<!-- ENDIF -->" href="{ADMIN_EXTENSIONS_SORT_CAT_URL}"><i class="icon-sitemap"></i> <span>{PHP.L.adm_sort_category}</span></a>
						<a class="btn btn-success <!-- IF {ADMIN_EXTENSIONS_ONLY_INSTALLED_SEL} -->special" href="{ADMIN_EXTENSIONS_ALL_EXTENSIONS_URL}"<!-- ELSE-->" href="{ADMIN_EXTENSIONS_ONLY_INSTALLED_URL}"<!-- ENDIF -->><i class="icon-ok-circle"></i> <span>{PHP.L.adm_only_installed}</span></a>
						<a class="btn btn-primary" href="{ADMIN_EXTENSIONS_HOOKS_URL}"><i class="icon-code"></i> <span>{PHP.L.Hooks}</span></a>
					</div>
				</div>

<!-- BEGIN: SECTION -->
	<div class="block">
		<h5>{ADMIN_EXTENSIONS_SECTION_TITLE} ({ADMIN_EXTENSIONS_CNT_EXTP})</h5>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>{PHP.L.Name} {PHP.L.adm_clicktoedit}</th>
					<th>{PHP.L.Code}</th>
					<th>{PHP.L.Version}</th>
					<th>{PHP.L.Parts}</th>
					<th>{PHP.L.Status}</th>
					<th>{PHP.L.Action}</th>
				</tr>
			</thead>
<!-- BEGIN: ROW -->
<!-- BEGIN: ROW_CAT -->
			<tr>
				<td colspan="6">
					<h4>{ADMIN_EXTENSIONS_CAT_TITLE}</h4>
				</td>
			</tr>
<!-- END: ROW_CAT -->
<!-- BEGIN: ROW_ERROR_EXT -->
			<tr>
				<td>{ADMIN_EXTENSIONS_X_ERR}</td>
				<td colspan="5">{ADMIN_EXTENSIONS_ERROR_MSG}</td>
			</tr>
<!-- END: ROW_ERROR_EXT -->
			<tr>
				<td class="ext-cell">
					<img src="<!-- IF {ADMIN_EXTENSIONS_ICO} -->{ADMIN_EXTENSIONS_ICO}<!-- ELSE -->{PHP.cfg.system_dir}/admin/img/plugins32.png<!-- ENDIF -->" alt="" />
					<a href="{ADMIN_EXTENSIONS_DETAILS_URL}">{ADMIN_EXTENSIONS_NAME}</a>
					<p>{ADMIN_EXTENSIONS_DESCRIPTION|cot_cutstring($this,60)}</p>
				</td>
				<td class="centerall">{ADMIN_EXTENSIONS_CODE_X}</td>
				<td class="centerall">
					<!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
					<span class="highlight_red">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="highlight_green">{ADMIN_EXTENSIONS_VERSION}</span>
					<!-- ELSE -->
					{ADMIN_EXTENSIONS_VERSION}
					<!-- ENDIF -->
				</td>
				<td class="centerall">{ADMIN_EXTENSIONS_PARTSCOUNT}</td>
				<td class="centerall">{ADMIN_EXTENSIONS_STATUS}</td>
				<td class="action centerall">
					<div class="btn-group">
<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->
					<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_EDIT_URL}" class="btn btn-small"><i class="icon-cog"></i> <span>{PHP.L.short_config}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.ifstruct} -->
					<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn btn-small"><i class="icon-sitemap"></i> <span>{PHP.L.short_struct}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.totalinstalled} -->
					<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="btn btn-small"><i class="icon-lock"></i> <span>{PHP.L.short_rights}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.ifthistools} -->
					<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn btn-small"><i class="icon-user"></i> <span>{PHP.L.short_admin}</span></a>
<!-- ENDIF -->
<!-- IF {PHP.if_plg_standalone} -->
					<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-small"><i class="icon-folder-open"></i> <span>{PHP.L.Open}</span></a>
<!-- ENDIF -->
					</div>
				</td>
			</tr>
<!-- END: ROW -->
<!-- BEGIN: ROW_ERROR -->
			<tr>
				<td>{ADMIN_EXTENSIONS_X}</td>
				<td colspan="5">{PHP.L.adm_opt_setup_missing}</td>
			</tr>
<!-- END: ROW_ERROR -->
		</table>
	</div>
<!-- END: SECTION -->

<!-- END: DEFAULT -->

<!-- BEGIN: DETAILS -->
	<div class="block">
		<h5>
			<!-- IF {ADMIN_EXTENSIONS_ICO} -->
				<img src="{ADMIN_EXTENSIONS_ICO}" />
			<!-- ELSE -->
				<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
			<!-- ENDIF -->
			{ADMIN_EXTENSIONS_TYPE} {ADMIN_EXTENSIONS_NAME}:
		</h5>
		<table class="table table-striped">
			<tr>
				<td class="">{PHP.L.Code}:</td>
				<td class="">{ADMIN_EXTENSIONS_CODE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td>{ADMIN_EXTENSIONS_DESCRIPTION}</td>
			</tr>
			<tr>
				<td>{PHP.L.Version}:</td>
				<td>
					<!-- IF {PHP.isinstalled} AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
					<span class="highlight_red">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span> / <span class="highlight_green">{ADMIN_EXTENSIONS_VERSION}</span>
					<!-- ELSE -->
					{ADMIN_EXTENSIONS_VERSION}
					<!-- ENDIF -->
				</td>
			</tr>
			<tr>
				<td>{PHP.L.Date}:</td>
				<td>{ADMIN_EXTENSIONS_DATE}</td>
			</tr>
<!--//<tr>
	<td>{PHP.L.adm_defauth_guests}:</td>
	<td>{ADMIN_EXTENSIONS_ADMRIGHTS_AUTH_GUESTS} ({ADMIN_EXTENSIONS_AUTH_GUESTS})</td>
</tr>
<tr>
	<td>{PHP.L.adm_deflock_guests}:</td>
	<td>{ADMIN_EXTENSIONS_ADMRIGHTS_LOCK_GUESTS} ({ADMIN_EXTENSIONS_LOCK_GUESTS})</td>
</tr>
<tr>
	<td>{PHP.L.adm_defauth_members}:</td>
	<td>{ADMIN_EXTENSIONS_ADMRIGHTS_AUTH_MEMBERS} ({ADMIN_EXTENSIONS_AUTH_MEMBERS})</td>
</tr>
<tr>
	<td>{PHP.L.adm_deflock_members}:</td>
	<td>{ADMIN_EXTENSIONS_ADMRIGHTS_LOCK_MEMBERS} ({ADMIN_EXTENSIONS_LOCK_MEMBERS})</td>
</tr>//-->
			<tr>
				<td>{PHP.L.Author}:</td>
				<td>{ADMIN_EXTENSIONS_AUTHOR}</td>
			</tr>
			<tr>
				<td>{PHP.L.Copyright}:</td>
				<td>{ADMIN_EXTENSIONS_COPYRIGHT}</td>
			</tr>
			<tr>
				<td>{PHP.L.Notes}:</td>
				<td>{ADMIN_EXTENSIONS_NOTES}</td>
			</tr>
			<!-- BEGIN: DEPENDENCIES -->
			<tr>
				<td>{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</td>
				<td>
					<ul class="unstyled">
					<!-- BEGIN: DEPENDENCIES_ROW -->
						<li>
							<i class="icon-check icon-li"></i><a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}" class="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS}">{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</a>
						</li>
					<!-- END: DEPENDENCIES_ROW -->
					</ul>
				</td>
			</tr>
			<!-- END: DEPENDENCIES -->
		</table>
	</div>
	
	<!-- IF {PHP.isinstalled} AND {PHP.exists} -->
	<div class="block">
		<h5>{PHP.L.Action}:</h5>
		<div class="btn-group">
			<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
			<a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="btn btn-primary"><i class="icon-folder-open"></i> {PHP.L.Open}</a>
			<!-- ENDIF -->
			<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS} -->
			<a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="btn btn-danger"><i class="icon-user"></i> {PHP.L.Administration}</a>
			<!-- ENDIF -->
			<!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
			<a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}" class="btn btn-primary"><i class="icon-cog"></i> {PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})</a>
			<!-- ENDIF -->
			<a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS}" class="btn btn-danger"><i class="icon-lock"></i> {PHP.L.short_rights}</a>
			<!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT} -->
			<a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="btn btn-primary"><i class="icon-sitemap"></i> {PHP.L.Structure}</a>
			<!-- ENDIF -->
		</div>
	</div>
<!-- ENDIF -->

	<div class="block">
		<h5>{PHP.L.Options}:</h5>
		<div class="btn-group">
<!-- IF !{PHP.isinstalled} AND {PHP.dependencies_satisfied} -->
			<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}" class="ajax btn btn-primary">{PHP.L.adm_opt_install}</a>
<!-- ENDIF -->
<!-- IF {PHP.isinstalled} -->
<!-- IF {PHP.exists} -->
			<a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}" class="ajax btn btn-primary"><i class="icon-refresh"></i> {PHP.L.adm_opt_update}</a>
<!-- ENDIF -->
			<a title="{PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_URL}" class="ajax btn btn-danger"><i class="icon-remove"></i> {PHP.L.adm_opt_uninstall}</a>
			<a title="{PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}" class="ajax btn btn-primary"><i class="icon-pause"></i> {PHP.L.adm_opt_pauseall}</a>
<!-- IF {PHP.exists} -->
			<a title="{PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}" class="ajax btn btn-primary"><i class="icon-play"></i> {PHP.L.adm_opt_unpauseall}</a>
<!-- ENDIF -->
<!-- ENDIF -->
		</div>
	</div>

	<div class="block">
		<h5>{PHP.L.Parts}:</h5>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="width5">#</th>
					<th class="width15">{PHP.L.Part}</th>
					<th class="width20">{PHP.L.File}</th>
					<th class="width20">{PHP.L.Hooks}</th>
					<th class="width10">{PHP.L.Order}</th>
					<th class="width15">{PHP.L.Status}</th>
					<th class="width15">{PHP.L.Action}</th>
				</tr>
			</thead>
<!-- BEGIN: ROW_ERROR_PART -->
			<tr>
				<td colspan="3">{ADMIN_EXTENSIONS_DETAILS_ROW_X}</td>
				<td colspan="4">{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</td>
			</tr>
<!-- END: ROW_ERROR_PART -->
<!-- BEGIN: ROW_PART -->
			<tr>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</td>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</td>
				<td class="centerall">
<!-- BEGIN: ROW_PART_NOTINSTALLED -->
					&ndash;
<!-- END: ROW_PART_NOTINSTALLED -->
<!-- BEGIN: ROW_PART_PAUSE -->
					<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}" class="ajax btn btn-primary btn-mini"><i class="icon-pause"></i> {PHP.L.adm_opt_pause}</a>
<!-- END: ROW_PART_PAUSE -->
<!-- BEGIN: ROW_PART_UNPAUSE -->
					<a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}" class="ajax btn btn-primary btn-mini"><i class="icon-play"></i> {PHP.L.adm_opt_unpause}</a>
<!-- END: ROW_PART_UNPAUSE -->
				</td>
			</tr>
<!-- END: ROW_PART -->
		</table>
	</div>
	
	<div class="block">
		<h5>{PHP.L.Tags}:</h5>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="width5">#</th>
					<th class="width25">{PHP.L.Part}</th>
					<th class="width70">{PHP.L.Files} / {PHP.L.Tags}</th>
				</tr>
			</thead>
<!-- BEGIN: ROW_ERROR_TAGS -->
			<tr>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
				<td class="centerall">{PHP.L.None}</td>
			</tr>
<!-- END: ROW_ERROR_TAGS -->
<!-- BEGIN: ROW_TAGS -->
			<tr>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
				<td class="centerall">{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
				<td>{ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}</td>
			</tr>
<!-- END: ROW_TAGS -->
		</table>
	</div>
<!-- END: DETAILS -->

<!-- BEGIN: HOOKS -->
	<div class="block">
		<h5>{PHP.L.Hooks} ({ADMIN_EXTENSIONS_CNT_HOOK}):</h5>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="width40">{PHP.L.Hooks}</th>
					<th class="width20">{PHP.L.Plugin}</th>
					<th class="width20">{PHP.L.Order}</th>
					<th class="width20">{PHP.L.Active}</th>
				</tr>
			</thead>
			<tbody>
<!-- BEGIN: HOOKS_ROW -->
				<tr>
					<td>{ADMIN_EXTENSIONS_HOOK}</td>
					<td>{ADMIN_EXTENSIONS_CODE}</td>
					<td class="centerall">{ADMIN_EXTENSIONS_ORDER}</td>
					<td class="centerall">{ADMIN_EXTENSIONS_ACTIVE}</td>
				</tr>
<!-- END: HOOKS_ROW -->
			</tbody>
		</table>
	</div>
<!-- END: HOOKS -->

			</div>

<!-- END: MAIN -->