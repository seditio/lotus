<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="block">
					<h5>Disk Cache</h5>
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<div class="btn-group">
						<a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax btn btn-primary"><i class="icon-refresh"></i> {PHP.L.Refresh}</a>
						<a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax btn btn-danger"><i class="icon-remove"></i> {PHP.L.adm_purgeall}</a>
					</div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th class="width25">{PHP.L.Item}</th>
								<th class="width25">{PHP.L.Files}</th>
								<th class="width25">{PHP.L.Size}</th>
								<th class="width25">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: ADMIN_DISKCACHE_ROW -->
						<tr>
							<td class="textcenter">{ADMIN_DISKCACHE_ITEM_NAME}</td>
							<td class="textcenter">{ADMIN_DISKCACHE_FILES}</td>
							<td class="textcenter">{ADMIN_DISKCACHE_SIZE}</td>
							<td class="centerall"><a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}" class="ajax btn btn-{PHP.R.admin-config-buttonsize}"><i class="icon-remove"></i> {PHP.L.Delete}</a></td>
						</tr>
<!-- END: ADMIN_DISKCACHE_ROW -->
						</tbody>
						<thead>
							<tr>
								<th class="centerall">{PHP.L.Total}:</th>
								<th class="centerall">{ADMIN_DISKCACHE_CACHEFILES}</th>
								<th class="centerall">{ADMIN_DISKCACHE_CACHESIZE}</th>
								<th class="centerall">&nbsp;</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
<!-- END: MAIN -->