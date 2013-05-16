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
									<a title="{PHP.L.Delete}" href="{ADMIN_RATINGS_ROW_URL_DEL}" class="button">{PHP.L.Delete}</a>
									<a title="{PHP.L.Open}" href="{ADMIN_RATINGS_ROW_RAT_URL}" class="button special">{PHP.L.Open}</a>
								</td>
							</tr>
<!-- END: RATINGS_ROW -->
						</table>
						<div class="pagination">{ADMIN_RATINGS_PAGINATION_PREV}{ADMIN_RATINGS_PAGNAV}{ADMIN_RATINGS_PAGINATION_NEXT}</div>
						<p class="text-center">{PHP.L.adm_ratings_totalitems}: {ADMIN_RATINGS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_RATINGS_ON_PAGE} {PHP.L.adm_ratings_totalvotes}: {ADMIN_RATINGS_TOTALVOTES}</p>
					</div>
				</div>
			</div>
<!-- END: MAIN -->