<!-- BEGIN: MAIN -->

		<div class="container-fluid">
			<div class="row-fluid">
			
				<div class="block">
					<h5>{PHP.L.adm_internalcache}</h5>
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<p>
						<a href="{ADMIN_CACHE_URL_REFRESH}" class="ajax btn btn-primary">{PHP.L.Refresh}</a>
						<a href="{ADMIN_CACHE_URL_PURGE}" class="ajax btn btn-primary">{PHP.L.adm_purgeall}</a>
						<a href="{ADMIN_CACHE_URL_SHOWALL}" class="ajax btn btn-primary">{PHP.L.adm_cache_showall}</a>
					</p>
				</div>
		
<!-- BEGIN: ADMIN_CACHE_MEMORY -->
				<div class="block">
					<h5>{ADMIN_CACHE_MEMORY_DRIVER}</h5>
					<p>
						<div class="bar_back">
							<div class="bar_front" style="width:{ADMIN_CACHE_MEMORY_PERCENTBAR}%;"></div>
						</div>
						{PHP.L.Available}: {ADMIN_CACHE_MEMORY_AVAILABLE} / {ADMIN_CACHE_MEMORY_MAX} {PHP.L.bytes}
					</p>
				</div>
<!-- END: ADMIN_CACHE_MEMORY -->

				<div class="block">
					<h5>{PHP.L.Database}</h5>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th class="width20">{PHP.L.Item}</th>
								<th class="width10">{PHP.L.Expire}</th>
								<th class="width10">{PHP.L.Size}</th>
								<th class="width50">{PHP.L.Value}</th>
								<th class="width10">{PHP.L.Delete}</th>
							</tr>
						</thead>
						<tbody></tbody>
<!-- BEGIN: ADMIN_CACHE_ROW -->
							<tr>
								<td>{ADMIN_CACHE_ITEM_NAME}</td>
								<td class="textcenter">{ADMIN_CACHE_EXPIRE}</td>
								<td class="textcenter">{ADMIN_CACHE_SIZE}</td>
								<td>{ADMIN_CACHE_VALUE}</td>
								<td class="centerall"><a title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}" class="ajax button">{PHP.L.Delete}</a></td>
							</tr>
<!-- END: ADMIN_CACHE_ROW -->
						</tbody>
						<thead>
							<tr>
								<th class="textcenter" colspan="2">{PHP.L.Total}:</th>
								<th class="textcenter">{ADMIN_CACHE_CACHESIZE}</th>
								<th>&nbsp;</th>
								<th>&nbsp;</th>
							</tr>
						</thead>
					</table>
				</div>
		
			</div>
		</div>
<!-- END: MAIN -->