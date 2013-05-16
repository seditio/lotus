<!-- BEGIN: MAIN -->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span6">
					<div class="block">
						<h5>{PHP.L.ipsearch_title}</h5>
						{FILE "{PHP.cfg.themes_dir}/admin/lotus/warnings.tpl"}
						<h6>{PHP.L.ipsearch_dnsrecord}: {IPSEARCH_RES_DNS}</h6>
<!-- BEGIN: IPSEARCH_RESULTS -->
						<p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES1} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK1}:</p>
						<table class="table table-striped">
<!-- BEGIN: IPSEARCH_IPMASK1 -->
							<tr>
								<td>{IPSEARCH_USER_IPMASK1}</td>
								<td class="text-right">{IPSEARCH_USER_LASTIP_IPMASK1}</td>
							</tr>
<!-- END: IPSEARCH_IPMASK1 -->
						</table>
						<p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES2} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK2}.*:</p>
						<table class="table table-striped">
<!-- BEGIN: IPSEARCH_IPMASK2 -->
							<tr>
								<td>{IPSEARCH_USER_IPMASK2}</td>
								<td class="text-right">{IPSEARCH_USER_LASTIP_IPMASK2}</td>
							</tr>
<!-- END: IPSEARCH_IPMASK2 -->
						</table>
						<p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES3} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK3}.*.*:</p>
						<table class="table table-striped">
<!-- BEGIN: IPSEARCH_IPMASK3 -->
							<tr>
								<td>{IPSEARCH_USER_IPMASK3}</td>
								<td class="text-right">{IPSEARCH_USER_LASTIP_IPMASK3}</td>
							</tr>
<!-- END: IPSEARCH_IPMASK3 -->
						</table>
<!-- END: IPSEARCH_RESULTS -->
					</div>
				</div>
				<div class="span6">
					<div class="block">
						<h5>{PHP.L.ipsearch_searchthisuser}:</h5>
						<form id="search" action="{IPSEARCH_FORM_URL}" method="post" class="input-append">
							<input type="text" name="id" value="{IPSEARCH_ID}" size="16" maxlength="16" />
							<button type="submit" class="btn btn-primary">{PHP.L.Search}</button>
						</form>
					</div>
				</div>
			</div>
		</div>
<!-- END: MAIN -->