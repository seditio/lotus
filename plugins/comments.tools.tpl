<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>{PHP.L.comments_comments}</h5>
						{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
						<p><a title="{PHP.L.Configuration}" href="{ADMIN_COMMENTS_CONFIG_URL}" class="btn btn-primary">{PHP.L.Configuration}</a></p>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th class="width5">#</th>
									<th class="width5">{PHP.L.adm_area}</th>
									<th class="width5">{PHP.L.Code}</th>
									<th class="width15">{PHP.L.Author}</th>
									<th class="width15">{PHP.L.Date}</th>
									<th class="width30">{PHP.L.comments_comment}</th>
									<th class="width25">{PHP.L.Action}</th>
								</tr>
							</thead>
<!-- BEGIN: ADMIN_COMMENTS_ROW -->
							<tr>
								<td class="text-center">{ADMIN_COMMENTS_ITEM_ID}</td>
								<td class="text-center">{ADMIN_COMMENTS_AREA}</td>
								<td class="text-center">{ADMIN_COMMENTS_CODE}</td>
								<td class="text-center">{ADMIN_COMMENTS_AUTHOR}</td>
								<td class="text-center">{ADMIN_COMMENTS_DATE}</td>
								<td>{ADMIN_COMMENTS_TEXT}</td>
								<td class="action centerall">
									<div class="btn-group">
										<a title="{PHP.L.Open}" href="{ADMIN_COMMENTS_URL}" class="btn btn-mini"><i class="icon-folder-open"></i> {PHP.L.Open}</a>
										<a title="{PHP.L.Delete}" href="{ADMIN_COMMENTS_ITEM_DEL_URL}" class="ajax btn btn-mini"><i class="icon-remove"></i> {PHP.L.Delete}</a>
									</div>
								</td>
							</tr>
<!-- END: ADMIN_COMMENTS_ROW -->
						</table>
						<div class="pagination">{ADMIN_COMMENTS_PAGINATION_PREV}{ADMIN_COMMENTS_PAGNAV}{ADMIN_COMMENTS_PAGINATION_NEXT}</div>
						<p class="text-center">{PHP.L.Total}: {ADMIN_COMMENTS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_COMMENTS_COUNTER_ROW}</p>
					</div>
				</div>
			</div>
<!-- END: MAIN -->