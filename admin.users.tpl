<!-- BEGIN: MAIN -->
			<div class="row-fluid">
				<div class="block">
					<h5>{PHP.L.Users}</h5>
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
					<p>
						<a title="{PHP.L.Configuration}" href="{ADMIN_USERS_URL}" class="btn btn-primary"><i class="icon-cog"></i> {PHP.L.Configuration}</a>
						<a href="{ADMIN_USERS_EXTRAFIELDS_URL}" class="btn btn-primary"><i class="icon-cog"></i> {PHP.L.adm_extrafields_desc}</a>
					</p>
<!-- BEGIN: ADMIN_USERS_DEFAULT -->
					<table class="table table-bordered">
						<thead>
							<tr>
								<th class="width5">&nbsp;</th>
								<th class="width35">{PHP.L.Groups}</th>
								<th class="width20">{PHP.L.Members}</th>
								<th class="width20">{PHP.L.Enabled}</th>
								<th class="width20">{PHP.L.Action}</th>
							</tr>
						</thead>
						<tbody>
<!-- BEGIN: USERS_ROW -->
							<tr>
								<td>
								<!-- IF {PHP.hidden_groups} AND {ADMIN_USERS_ROW_GRP_HIDDEN} == Yes -->{PHP.R.admin_icon_usergroup0}<!-- ELSE -->{PHP.R.admin_icon_usergroup1}<!-- ENDIF -->
								<!-- ENDIF -->
								</td>
								<td><a href="{ADMIN_USERS_ROW_GRP_TITLE_URL}" class="ajax" title="{PHP.L.Edit}">{ADMIN_USERS_ROW_GRP_NAME} (#{ADMIN_USERS_ROW_GRP_ID})</a></td>
								<td class="text-center">{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</td>
								<td class="text-center">{ADMIN_USERS_ROW_GRP_DISABLED}</td>
								<td class="text-center action">
									<!-- IF !{ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
									<a title="{PHP.L.Rights}" href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}" class="btn btn-primary btn-small"><i class="icon-lock"></i> {PHP.L.short_rights}</a>
									<!-- ENDIF -->
									<a title="{PHP.L.Open}" href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}" class="btn btn-primary btn-small"><i class="icon-folder-open"></i> {PHP.L.short_open}</a>
								</td>
							</tr>
<!-- END: USERS_ROW -->
						</tbody>
					</table>
				</div>
		
				<div class="block">
					<h5>{PHP.L.Add}:</h5>
					<form name="addlevel" id="addlevel" action="{ADMIN_USERS_FORM_URL}" method="post" class="ajax">
						<table class="table table-bordered">
							<tr>
								<td class="width50">{PHP.L.Name}:</td>
								<td class="width50">{ADMIN_USERS_NGRP_NAME} {PHP.L.adm_required}</td>
							</tr>
							<tr>
								<td>{PHP.L.Title}:</td>
								<td>{ADMIN_USERS_NGRP_TITLE} {PHP.L.adm_required}</td>
							</tr>
							<tr>
								<td>{PHP.L.Description}:</td>
								<td>{ADMIN_USERS_NGRP_DESC}</td>
							</tr>
							<tr>
								<td>{PHP.L.Icon}:</td>
								<td>{ADMIN_USERS_NGRP_ICON}</td>
							</tr>
							<tr>
								<td>{PHP.L.Alias}:</td>
								<td>{ADMIN_USERS_NGRP_ALIAS}</td>
							</tr>
							<!-- IF {PHP.pfs_is_active} -->
							<tr>
								<td>{PHP.L.adm_maxsizesingle}:</td>
								<td>{ADMIN_USERS_NGRP_PFS_MAXFILE}</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_maxsizeallpfs}:</td>
								<td>{ADMIN_USERS_NGRP_PFS_MAXTOTAL}</td>
							</tr>
							<!-- ENDIF -->
							<tr>
								<td>{PHP.L.adm_copyrightsfrom}:</td>
								<td>{ADMIN_USERS_FORM_SELECTBOX_GROUPS} {PHP.L.adm_required}</td>
							</tr>
							<tr>
								<td>{PHP.L.adm_skiprights}:</td>
								<td>{ADMIN_USERS_NGRP_SKIPRIGHTS}</td>
							</tr>
							<tr>
								<td>{PHP.L.Level}:</td>
								<td>{ADMIN_USERS_NGRP_RLEVEL}</td>
							</tr>
							<tr>
								<td>{PHP.L.Disabled}:</td>
								<td>{ADMIN_USERS_NGRP_DISABLED}</td>
							</tr>
							<!-- IF {PHP.hidden_groups} -->
							<tr>
								<td>{PHP.L.Hidden}:</td>
								<td>{ADMIN_USERS_NGRP_HIDDEN}</td>
							</tr>
							<!-- ENDIF -->
							<tr>
								<td>{PHP.L.adm_rights_maintenance}:</td>
								<td>{ADMIN_USERS_NGRP_MAINTENANCE}</td>
							</tr>
							<tr>
								<td class="valid" colspan="2"><button type="submit" class="btn btn-primary">{PHP.L.Add}</button></td>
							</tr>
						</table>
					</form>
				</div>
<!-- END: ADMIN_USERS_DEFAULT -->

<!-- BEGIN: ADMIN_USERS_EDIT -->
			<form name="editlevel" id="editlevel" action="{ADMIN_USERS_EDITFORM_URL}" method="post" class="ajax">
				<table class="table table-bordered">
					<tr>
						<td class="width40">{PHP.L.Name}:</td>
						<td class="width60">{ADMIN_USERS_EDITFORM_GRP_NAME} {PHP.L.adm_required}</td>
					</tr>
					<tr>
						<td>{PHP.L.Title}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_TITLE} {PHP.L.adm_required}</td>
					</tr>
					<tr>
						<td>{PHP.L.Description}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_DESC}</td>
					</tr>
					<tr>
						<td>{PHP.L.Icon}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_ICON}</td>
					</tr>
					<tr>
						<td>{PHP.L.Alias}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_ALIAS}</td>
					</tr>
					<!-- IF {PHP.pfs_is_active} -->
					<tr>
						<td>{PHP.L.adm_maxsizesingle}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXFILE}</td>
					</tr>
					<tr>
						<td>{PHP.L.adm_maxsizeallpfs}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXTOTAL}</td>
					</tr>
					<!-- ENDIF -->
					<tr>
						<td>{PHP.L.Disabled}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_DISABLED}</td>
					</tr>
					<!-- IF {PHP.hidden_groups} -->
					<tr>
						<td>{PHP.L.Hidden}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_HIDDEN}</td>
					</tr>
					<!-- ENDIF -->
					<tr>
						<td>{PHP.L.Level}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_RLEVEL}</td>
					</tr>
					<tr>
						<td>{PHP.L.Members}:</td>
						<td><a href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}">{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT}</a></td>
					</tr>
					<tr>
						<td>{PHP.L.adm_rights_maintenance}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_MAINTENANCE}</td>
					</tr>
					<tr>
						<td>{PHP.L.adm_skiprights}:</td>
						<td>{ADMIN_USERS_EDITFORM_GRP_SKIPRIGHTS}</td>
					</tr>
					<!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
					<tr>
						<td>{PHP.L.Rights}:</td>
						<td><a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="btn btn-primary btn-small"><i class="icon-lock"></i> {PHP.L.Rights}</a></td>
					</tr>
					<!-- ENDIF -->
<!-- IF {PHP.g} > 5 -->
					<tr>
						<td>{PHP.L.Delete}:</td>
						<td><a href="{ADMIN_USERS_EDITFORM_DEL_URL}" class="ajax">{PHP.R.admin_icon_delete}</a></td>
					</tr>
<!-- ENDIF -->
					<tr>
						<td class="valid" colspan="2"><button type="submit" class="btn btn-primary"><i class="icon-refresh"></i> {PHP.L.Update}</button></td>
					</tr>
				</table>
			</form>
<!-- END: ADMIN_USERS_EDIT -->
			</div>
<!-- END: MAIN -->