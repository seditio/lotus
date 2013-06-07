<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>{PHP.L.Ratings}</h5>
						{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
						<p><a title="{PHP.L.Configuration}" href="{ADMIN_RATINGS_URL_CONFIG}" class="btn btn-primary"><i class="icon-cog"></i> {PHP.L.Configuration}</a></p>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th class="width10">{PHP.L.adm_area}</th>
									<th class="width10">{PHP.L.Code}</th>
									<th class="width20">{PHP.L.Date} (GMT)</th>
									<th class="width20">{PHP.L.Votes}</th>
									<th class="width20">{PHP.L.Rating}</th>
									<th class="width20">{PHP.L.Action}</th>
								</tr>
							</thead>
<!-- BEGIN: RATINGS_ROW -->
							<tr>
								<td class="textcenter">{ADMIN_RATINGS_ROW_RATING_AREA}</td>
								<td class="textcenter">{ADMIN_RATINGS_ROW_RATING_CODE}</td>
								<td class="textcenter">{ADMIN_RATINGS_ROW_CREATIONDATE}</td>
								<td class="textcenter">{ADMIN_RATINGS_ROW_VOTES}</td>
								<td class="textcenter">{ADMIN_RATINGS_ROW_RATING_AVERAGE}</td>
								<td class="centerall action">
									<div class="btn-group">
										<a title="{PHP.L.Delete}" href="{ADMIN_RATINGS_ROW_URL_DEL}" class="btn btn-{PHP.R.admin-config-buttonsize}"><i class="icon-remove"></i> <span>{PHP.L.Delete}</span></a>
										<a title="{PHP.L.Open}" href="{ADMIN_RATINGS_ROW_RAT_URL}" class="btn btn-{PHP.R.admin-config-buttonsize}"><i class="icon-folder-open"></i> <span>{PHP.L.Open}</span></a>
									</div>
								</td>
							</tr>
<!-- END: RATINGS_ROW -->
						</table>
						<p class="text-center">{PHP.L.adm_ratings_totalitems}: {ADMIN_RATINGS_TOTALITEMS}, <span class="lower">{PHP.L.Onpage}:</span> {ADMIN_RATINGS_ON_PAGE} {PHP.L.adm_ratings_totalvotes}: {ADMIN_RATINGS_TOTALVOTES}</p>
<!-- IF {ADMIN_RATINGS_PAGNAV} -->
						<div class="pagination pagination-{PHP.R.admin-config-pagisize} pagination-{PHP.R.admin-config-pagialign}">
							<ul>{ADMIN_RATINGS_PAGINATION_PREV}{ADMIN_RATINGS_PAGNAV}{ADMIN_RATINGS_PAGINATION_NEXT}</ul>
						</div>
<!-- ENDIF -->
					</div>
				</div>
			</div>
<!-- END: MAIN -->