<!-- BEGIN: LIST -->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="block">
					<h5>{PHP.L.Modules}</h5>
					<table class="table table-striped">
<!-- BEGIN: ADMIN_STRUCTURE_EXT -->
						<tr>
							<td class="centerall width10">
								<!-- IF {ADMIN_STRUCTURE_EXT_ICO} --> 
								<img src="{ADMIN_STRUCTURE_EXT_ICO}"/>
								<!-- ELSE -->
								<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
								<!-- ENDIF -->
							</td>
							<td class="width90"><a href="{ADMIN_STRUCTURE_EXT_URL}">{ADMIN_STRUCTURE_EXT_NAME}</a></td>
						</tr>
<!-- END: ADMIN_STRUCTURE_EXT -->
<!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
						<tr>
							<td colspan="2">{PHP.L.adm_listisempty}</td>
						</tr>
<!-- END: ADMIN_STRUCTURE_EMPTY -->
					</table>
				</div>
			</div>
		</div>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="block">
					<h5>{PHP.L.Structure}</h5>
					
					{FILE "themes/admin/lotus/warnings.tpl"}
		
					<p>
						<a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}" class="btn btn-primary"><i class="icon-cog"></i> {PHP.L.adm_extrafields_desc}</a>
						<a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="ajax btn btn-success" title="{PHP.L.adm_tpl_resyncalltitle}"><i class="icon-refresh"></i> {PHP.L.Resync}</a>
<!-- IF {ADMIN_STRUCTURE_I18N_URL} -->
						<a href="{ADMIN_STRUCTURE_I18N_URL}" class="button">{PHP.L.i18n_structure}</a>
<!-- ENDIF -->
					</p>

<!-- BEGIN: OPTIONS -->
			<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">
			<table class="table table-bordered">
				<tr>
					<td class="width20">{PHP.L.Path}:</td>
					<td class="width80">{ADMIN_STRUCTURE_PATH}</td>
				</tr>
				<tr>
					<td>{PHP.L.Code}:</td>
					<td>{ADMIN_STRUCTURE_CODE}</td>
				</tr>
				<tr>
					<td>{PHP.L.Title}:</td>
					<td>{ADMIN_STRUCTURE_TITLE}</td>
				</tr>
				<tr>
					<td>{PHP.L.Description}:</td>
					<td>{ADMIN_STRUCTURE_DESC}</td>
				</tr>
				<tr>
					<td>{PHP.L.Icon}:</td>
					<td>{ADMIN_STRUCTURE_ICON}</td>
				</tr>
				<tr>
					<td>{PHP.L.Locked}:</td>
					<td>{ADMIN_STRUCTURE_LOCKED}</td>
				</tr>
				<tr>
					<td>{PHP.L.adm_tpl_mode}:</td>
					<td>
						{ADMIN_STRUCTURE_TPLMODE} {ADMIN_STRUCTURE_SELECT}
						<p>{PHP.L.adm_tpl_quickcat}: {ADMIN_STRUCTURE_TPLQUICK}</p>
					</td>
				</tr>
<!-- BEGIN: EXTRAFLD -->
				<tr>
					<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
					<td class="{ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_EXTRAFLD}</td>
				</tr>
<!-- END: EXTRAFLD -->
				<tr>
					<td class="valid" colspan="2"><button type="submit" class="btn btn-warning"><i class="icon-refresh"></i> {PHP.L.Update}</button></td>
				</tr>
			</table>
			<p class="paging"><a href="{ADMIN_STRUCTURE_CONFIG_URL}" class="button">{PHP.L.Configuration}</a></p>
			</form>
<!-- END: OPTIONS -->

<!-- BEGIN: DEFAULT -->
			<h6>{PHP.L.editdeleteentries}:</h6>
			<form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data" >
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>{PHP.L.Path}</th>
							<th>{PHP.L.Code}</th>
							<th>{PHP.L.Title}</th>
							<th>{PHP.L.TPL}</th>
							<th>{PHP.L.Pages}</th>
							<th>{PHP.L.Action}</th>
						</tr>
					</thead>
<!-- BEGIN: ROW -->
					<tr>
						<td class="{ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_SPACEIMG}{ADMIN_STRUCTURE_PATH}</td>
						<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_CODE}</td>
						<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_TITLE}</td>
						<td class="centerall {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_TPLQUICK}</td>
						<td class="text-center {ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_COUNT}</td>
						<td class="action {ADMIN_STRUCTURE_ODDEVEN}">
							<a href="{ADMIN_STRUCTURE_CONFIG_URL}" title="{PHP.L.Config}" class="btn btn-primary btn-mini"><i class="icon-cog"></i> {PHP.L.short_config}</a>
							<!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} --><a title="{PHP.L.Rights}" href="{ADMIN_STRUCTURE_RIGHTS_URL}" class="btn btn-primary btn-mini"><i class="icon-lock"></i> {PHP.L.short_rights}</a><!-- ENDIF -->
							<a title="{PHP.L.Options}" href="{ADMIN_STRUCTURE_OPTIONS_URL}" class="ajax btn btn-primary btn-mini"><i class="icon-edit"></i> {PHP.L.short_options}</a>
							<!-- IF {PHP.dozvil} --><a title="{PHP.L.Delete}" href="{ADMIN_STRUCTURE_UPDATE_DEL_URL}" class="confirmLink btn btn-danger btn-mini"><i class="icon-remove"></i> {PHP.L.short_delete}</a><!-- ENDIF -->
							<a href="{ADMIN_STRUCTURE_JUMPTO_URL}" title="{PHP.L.Pages}" class="button btn btn-success btn-mini"><i class="icon-hand-right"></i> {PHP.L.short_open}</a> </td>
					</tr>
<!-- END: ROW -->
					<tr>
						<td class="valid" colspan="8"><button type="submit" class="btn btn-warning"><i class="icon-refresh"></i> {PHP.L.Update}</button></td>
					</tr>
				</table>
			</form>
<!-- IF {ADMIN_STRUCTURE_PAGNAV} -->
			<div class="pagination">{ADMIN_STRUCTURE_PAGINATION_PREV}{ADMIN_STRUCTURE_PAGNAV}{ADMIN_STRUCTURE_PAGINATION_NEXT}</div>
<!-- ENDIF -->
			<p class="text-center">{PHP.L.Total}: {ADMIN_STRUCTURE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_STRUCTURE_COUNTER_ROW}</p>
<!-- END: DEFAULT -->

<!-- BEGIN: NEWCAT -->
			<h6>{PHP.L.Add}:</h6>
			<form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post" class="ajax" enctype="multipart/form-data">
				<table class="table table-bordered">
					<tr>
						<td class="width20">{PHP.L.Path}:</td>
						<td class="width80">{ADMIN_STRUCTURE_PATH} {PHP.L.adm_required}</td>
					</tr>
					<tr>
						<td>{PHP.L.Code}:</td>
						<td>{ADMIN_STRUCTURE_CODE} {PHP.L.adm_required}</td>
					</tr>
					<tr>
						<td>{PHP.L.Title}:</td>
						<td>{ADMIN_STRUCTURE_TITLE} {PHP.L.adm_required}</td>
					</tr>
					<tr>
						<td>{PHP.L.Description}:</td>
						<td>{ADMIN_STRUCTURE_DESC}</td>
					</tr>
					<tr>
						<td>{PHP.L.Icon}:</td>
						<td>{ADMIN_STRUCTURE_ICON}</td>
					</tr>
					<tr>
						<td>{PHP.L.Locked}:</td>
						<td>{ADMIN_STRUCTURE_LOCKED}</td>
					</tr>
					<!-- BEGIN: EXTRAFLD -->
					<tr>
						<td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
						<td>{ADMIN_STRUCTURE_EXTRAFLD}</td>
					</tr>
					<!-- END: EXTRAFLD -->
					<tr>
						<td class="valid" colspan="2">
							<button type="submit" class="btn btn-warning"><i class="icon-plus-sign"></i> {PHP.L.Add}</button>
						</td>
					</tr>
				</table>
			</form>
<!-- END: NEWCAT -->

				</div>
			</div>
		</div>
		
<!-- END: MAIN -->