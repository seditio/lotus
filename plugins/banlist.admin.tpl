<!-- BEGIN: MAIN -->

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>{PHP.L.banlist_title}</h5>
						{FILE "{PHP.cfg.themes_dir}/admin/lotus/warnings.tpl"}
						<table class="table table-bordered">
							<thead>
								<tr>
									<th class="width20">{PHP.L.banlist_ipmask}</th>
									<th class="width20">{PHP.L.banlist_emailmask}</th>
									<th class="width20">{PHP.L.banlist_reason}</th>
									<th class="width15">{PHP.L.banlist_duration}</th>
									<th class="width25">{PHP.L.Action}</th>
								</tr>
							</thead>
<!-- BEGIN: ADMIN_BANLIST_ROW -->
							<form name="savebanlist_{ADMIN_BANLIST_ROW_ID}" id="savebanlist_{ADMIN_BANLIST_ROW_ID}" action="{ADMIN_BANLIST_ROW_URL}" method="post">
							<tr>
								<td class="text-center">{ADMIN_BANLIST_ROW_IP}</td>
								<td class="text-center">{ADMIN_BANLIST_ROW_EMAIL}</td>
								<td class="text-center">{ADMIN_BANLIST_ROW_REASON}</td>
								<td class="text-center">{ADMIN_BANLIST_ROW_EXPIRE}</td>
								<td class="text-center">
									<button type="submit" class="btn btn-primary btn-small"><i class="icon-refresh"></i> {PHP.L.Update}</button>
									<button type="submit" onclick="parent.location='{ADMIN_BANLIST_ROW_DELURL}'" class="btn btn-danger btn-small"><i class="icon-remove"></i> {PHP.L.Delete}</button>
								</td>
							</tr>
							</form>
<!-- END: ADMIN_BANLIST_ROW -->
						</table>
						<div class="pagination">{ADMIN_BANLIST_PAGINATION_PREV}{ADMIN_BANLIST_PAGNAV}{ADMIN_BANLIST_PAGINATION_NEXT}</div>
						<p class="text-center">{PHP.L.Total}: {ADMIN_BANLIST_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_BANLIST_COUNTER_ROW}</p>
					</div>
					
					<div class="block">
						<h5>{PHP.L.Add}:</h5>
						<form name="addbanlist" id="addbanlist" action="{ADMIN_BANLIST_URLFORMADD}" method="post" class="ajax">
							<table class="table table-bordered">
								<tr>
									<td class="width20">{PHP.L.banlist_ipmask}:</td>
									<td class="width80">{ADMIN_BANLIST_IP}</td>
								</tr>
								<tr>
									<td>{PHP.L.banlist_emailmask}:</td>
									<td>{ADMIN_BANLIST_EMAIL}</td>
								</tr>
								<tr>
									<td>{PHP.L.banlist_reason}:</td>
									<td>{ADMIN_BANLIST_REASON}</td>
								</tr>
								<tr>
									<td>{PHP.L.banlist_duration}:</td>
									<td>{ADMIN_BANLIST_EXPIRE}</td>
								</tr>
								<tr>
									<td class="valid" colspan="2">
										<button type="submit" class="btn btn-primary"><i class="icon-plus-sign"></i> {PHP.L.Add}</button>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
<!-- END: MAIN -->