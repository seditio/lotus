<!-- BEGIN: MAIN -->
			<div id="admin-other" class="row-fluid">
				<div class="span4">
					<div class="block">
						<h5>{PHP.L.Core}</h5>
						<table class="table table-bordered">
							<tr>
								<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
								<td>
									<a class="large strong" href="{ADMIN_OTHER_URL_CACHE}">{PHP.L.adm_internalcache}</a>
									<p class="small">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
								</td>
							</tr>
							<tr>
								<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
								<td>
									<a class="large strong" href="{ADMIN_OTHER_URL_DISKCACHE}">{PHP.L.adm_diskcache}</a>
									<p class="small">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
								</td>
							</tr>
							<tr>
								<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
								<td>
									<a class="large strong" href="{ADMIN_OTHER_URL_EXFLDS}">{PHP.L.adm_extrafields}</a>
									<p class="small">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
								</td>
							</tr>			
							<tr>
								<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
								<td>
									<a class="large strong" href="{ADMIN_OTHER_URL_LOG}">{PHP.L.adm_log}</a>
									<p class="small">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
								</td>
							</tr>
							<tr>
								<td class="centerall"><img src="{PHP.cfg.system_dir}/admin/img/cfg_info.png"/></td>
								<td>
									<a class="large strong" href="{ADMIN_OTHER_URL_INFOS}">{PHP.L.adm_infos}</a>
									<p class="small">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
								</td>
							</tr>
						</table>
					</div>
				</div>
<!-- BEGIN: SECTION -->
					<div class="span4">
						<div class="block">
							<h5>{ADMIN_OTHER_SECTION}</h5>
							<table class="table table-bordered">
<!-- BEGIN: ROW -->
								<tr>
									<td class="centerall width10">
										<!-- IF {ADMIN_OTHER_EXT_ICO} --> 
										<img src="{ADMIN_OTHER_EXT_ICO}"/>
										<!-- ELSE -->
										<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
										<!-- ENDIF -->
									</td>
									<td class="width90">
										<a class="large strong" href="{ADMIN_OTHER_EXT_URL}">{ADMIN_OTHER_EXT_NAME}</a>
										<p class="small">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
									</td>
								</tr>
<!-- END: ROW -->
<!-- BEGIN: EMPTY -->
							<tr>
								<td colspan="2">{PHP.L.adm_listisempty}</td>
							</tr>
<!-- END: EMPTY -->
						</table>
					</div>
				</div>
<!-- END: SECTION -->
			</div>
<!-- END: MAIN -->