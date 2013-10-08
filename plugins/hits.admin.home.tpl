<!-- BEGIN: MAIN -->

<!-- BEGIN: STAT -->
	<div class="block">
		<h5><i class="icon-bar-chart"></i> {PHP.L.hits_hits}</h5>
		<table class="table table-striped">
<!-- BEGIN: ADMIN_HOME_ROW -->
			<tr>
				<td class="width15">{ADMIN_HOME_DAY}</td>
				<td class="hidden-phone width60">
					<div class="progress progress-striped">
						<div class="bar" style="width:{ADMIN_HOME_PERCENTBAR}%;">{ADMIN_HOME_PERCENTBAR}%</div>
					</div>
				</td>
				<td class="text-right width25">{ADMIN_HOME_HITS|cot_declension($this,'Hits')}</td>
			</tr>
<!-- END: ADMIN_HOME_ROW -->
		</table>
		<p class="clearfix"><a href="{ADMIN_HOME_MORE_HITS_URL}" class="btn btn-{PHP.R.admin-config-buttonsize} pull-right"><i class="icon-hand-right"></i> {PHP.L.ReadMore}</a></p>
	</div>
<!-- END: STAT -->

<!-- BEGIN: NOPARSE -->
<!-- BEGIN: ACTIVITY -->
	<div class="block">
		<h5><i class="icon-bar-chart"></i> {PHP.L.hits_activity}</h5>
		<table class="table table-striped">
			<tr>
				<td class="width80"><a href="{ADMIN_HOME_NEWUSERS_URL}">{PHP.L.home_newusers}</a></td>
				<td class="text-right width20">{ADMIN_HOME_NEWUSERS}</td>
			</tr>
			<tr>
				<td><a href="{ADMIN_HOME_NEWPAGES_URL}">{PHP.L.home_newpages}</a></td>
				<td class="text-right">{ADMIN_HOME_NEWPAGES}</td>
			</tr>
<!-- IF {PHP.cot_modules.forums} -->
			<tr>
				<td><a href="{ADMIN_HOME_NEWTOPICS_URL}">{PHP.L.home_newtopics}</a></td>
				<td class="text-right">{ADMIN_HOME_NEWTOPICS}</td>
			</tr>
			<tr>
				<td><a href="{ADMIN_HOME_NEWPOSTS_URL}">{PHP.L.home_newposts}</a></td>
				<td class="text-right">{ADMIN_HOME_NEWPOSTS}</td>
			</tr>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.pm} -->
			<tr>
				<td>{PHP.L.home_newpms}</td>
				<td class="text-right">{ADMIN_HOME_NEWPMS}</td>
			</tr>
<!-- ENDIF -->
		</table>
	</div>
<!-- END: ACTIVITY -->
<!-- END: NOPARSE -->

<!-- END: MAIN -->