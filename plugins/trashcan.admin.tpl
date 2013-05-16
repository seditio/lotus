<!-- BEGIN: MAIN -->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>{PHP.L.Trashcan}</h5>
						{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
						<p>
							<a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="btn btn-primary"><i class="icon-cog"></i> {PHP.L.Configuration}</a>
							<a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn btn-danger"><i class="icon-remove"></i> {PHP.L.Wipeall}</a>
						</p>
						<table class="table table-bordered">
							<thead>
							<tr>
								<th class="width5">{PHP.L.Type}</th>
								<th class="width15">{PHP.L.Date}</th>
								<th class="width35">{PHP.L.Title}</th>
								<th class="width20">{PHP.L.adm_setby}</th>
								<th class="width25">{PHP.L.Action}</th>
							</tr>
							</thead>
<!-- BEGIN: TRASHCAN_ROW -->
							<tr>
								<td class="text-center">{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
								<td class="text-center">{ADMIN_TRASHCAN_DATE}</td>
								<td class="text-center"><a href="{ADMIN_TRASHCAN_ROW_INFO_URL}">{ADMIN_TRASHCAN_TITLE}</a></td>
								<td class="text-center">{ADMIN_TRASHCAN_TRASHEDBY}</td>
								<td class="text-center action">
									<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} --><a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn btn-success btn-small"><i class="icon-share"></i> {PHP.L.Restore}</a><!-- ENDIF -->
									<a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn btn-danger btn-small"><i class="icon-remove"></i> {PHP.L.Wipe}</a>
								</td>
							</tr>
<!-- END: TRASHCAN_ROW -->
						</table>
						<div class="pagination">{ADMIN_TRASHCAN_PAGINATION_PREV}{ADMIN_TRASHCAN_PAGNAV}{ADMIN_TRASHCAN_PAGINATION_NEXT}</div>
						<p class="text-center">{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_TRASHCAN_COUNTER_ROW}</p>
					</div>
				</div>
			</div>
		</div>
<!-- END: MAIN -->