<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="span12">
<!-- IF {PHP.is_adminwarnings} -->
						<div class="alert alert-warning">
							<h4>{PHP.L.Message}</h4>
							<p>{PHP.L.adm_nogd}</p>
						</div>
<!-- ENDIF -->
					<div class="block">
						<h5>{PHP.L.PFS}</h5>
						<div class="btn-group">
							<a title="{PHP.L.Configuration}" href="{ADMIN_PFS_URL_CONFIG}" class="btn btn-primary"><i class="icon-cog"></i> {PHP.L.Configuration}</a>
							<a href="{ADMIN_PFS_URL_ALLPFS}" class="btn btn-primary"><i class="icon-file-alt"></i> {PHP.L.adm_allpfs}</a>
							<a href="{ADMIN_PFS_URL_SFS}" class="btn btn-primary"><i class="icon-file-alt"></i> {PHP.L.SFS}</a>
						</div>
					</div>
					<div class="block">
						<h5>{PHP.L.adm_gd}:</h5>
						<ul>
<!-- BEGIN: PFS_ROW -->
							<li>{ADMIN_PFS_DATAS_NAME}: <span class="strong">{ADMIN_PFS_DATAS_ENABLE_OR_DISABLE}</span></li>
<!-- END: PFS_ROW -->
						</ul>
					</div>
				</div>
			</div>
<!-- END: MAIN -->