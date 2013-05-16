<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>{PHP.L.Trashcan}</h5>
						{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
						<p>
							<a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="btn btn-primary"><i class="icon-cog"></i> {PHP.L.Configuration}</a>
							<a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn btn-danger"><i class="icon-remove"></i> {PHP.L.Wipeall}</a>
						</p>
<!-- BEGIN: TRASHCAN_ROW -->
						<table class="table table-bordered">
							<thead>
							<tr>
								<th class="width5">{PHP.L.Type}</th>
								<th class="width15">{PHP.L.Date}</th>
								<th class="width45">{PHP.L.Title}</th>
								<th class="width20">{PHP.L.adm_setby}</th>
								<th class="width15">{PHP.L.Action}</th>
							</tr>
							</thead>
							<tr>
								<td class="text-center">{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
								<td class="text-center">{ADMIN_TRASHCAN_DATE}</td>
								<td class="text-center">{ADMIN_TRASHCAN_TITLE}</td>
								<td class="text-center">{ADMIN_TRASHCAN_TRASHEDBY}</td>
								<td class="text-center action">
									<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} --><a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn btn-primary btn-small"><i class="icon-mail-reply"></i> {PHP.L.Cancel}</a><!-- ENDIF -->
									<a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn btn-danger btn-small"><i class="icon-remove"></i> {PHP.L.Delete}</a>
								</td>
							</tr>
						</table>

						<table class="table table-striped">
							<tr>
								<td class="width20">{PHP.L.Key}</td>
								<td class="width80">{PHP.L.Value}</td>
							</tr>
							<!-- BEGIN: TRASHCAN_INFOROW -->
							<tr>
								<td>{ADMIN_TRASHCAN_INFO_ROW}</td>
								<td>{ADMIN_TRASHCAN_INFO_VALUE}</td>
							</tr>
							<!-- END: TRASHCAN_INFOROW -->
						</table>
					<!-- END: TRASHCAN_ROW -->
						<p class="">{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}</p>
					</div>
				</div>
			</div>
<!-- END: MAIN -->