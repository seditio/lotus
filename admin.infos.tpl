<!-- BEGIN: MAIN -->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<div class="block">
						<h5>Info</h5>
						<table class="table table-striped">
							<tr>
								<td class="width60">{PHP.L.adm_phpver}</td>
								<td class="textcenter width40">{ADMIN_INFOS_PHPVER}</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_zendver}</td>
								<td class="textcenter">{ADMIN_INFOS_ZENDVER}</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_interface}</td>
								<td class="textcenter">{ADMIN_INFOS_INTERFACE}</td>
							</tr>
<!-- IF {ADMIN_INFOS_CACHEDRIVERS} -->
							<tr>
								<td>{PHP.L.adm_cachedrivers}</td>
								<td class="textcenter">{ADMIN_INFOS_CACHEDRIVERS}</td>
							</tr>
<!-- ENDIF -->
							<tr>
								<td>{PHP.L.adm_os}</td>
								<td class="textcenter">{ADMIN_INFOS_OS}</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_time1}</td>
								<td class="textcenter">{ADMIN_INFOS_DATE}</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_time2}</td>
								<td class="textcenter">{ADMIN_INFOS_GMDATE} GMT</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_time3}</td>
								<td class="textcenter">{ADMIN_INFOS_GMTTIME}</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_time4}</td>
								<td class="textcenter">{ADMIN_INFOS_USRTIME} {ADMIN_INFOS_TIMETEXT}</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
<!-- END: MAIN -->