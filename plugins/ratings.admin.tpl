<!-- BEGIN: MAIN -->

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>{PHP.L.Ratings}</h5>
						{FILE "{PHP.cfg.themes_dir}/admin/lotus/warnings.tpl"}
						<p>
							<a title="{PHP.L.Configuration}" href="{ADMIN_RATINGS_URL_CONFIG}" class="btn btn-primary">{PHP.L.Configuration}</a>
						</p>
						<table class="table table-bordered">
							<tr>
								<td class="coltop width10">{PHP.L.adm_area}</td>
								<td class="coltop width10">{PHP.L.Code}</td>
								<td class="coltop width20">{PHP.L.Date} (GMT)</td>
								<td class="coltop width20">{PHP.L.Votes}</td>
								<td class="coltop width20">{PHP.L.Rating}</td>
								<td class="coltop width20">{PHP.L.Action}</td>
							</tr>
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
			
			<p class="paging">{ADMIN_RATINGS_PAGINATION_PREV}{ADMIN_RATINGS_PAGNAV}{ADMIN_RATINGS_PAGINATION_NEXT}<span>{PHP.L.adm_ratings_totalitems}: {ADMIN_RATINGS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_RATINGS_ON_PAGE}</span><span>{PHP.L.adm_ratings_totalvotes}: {ADMIN_RATINGS_TOTALVOTES}</span></p>

					</div>
				</div>
			</div>
		</div>			
			
<!-- END: MAIN -->