<!-- BEGIN: MAIN -->
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div id="topbar">
					<ul id="layout">
						<li id="hds"><a href="#" class="btn btn-mini btn-block disabled" rel="{PHP.L.hds0} / {PHP.L.hds1}"><i class="icon-resize-horizontal"></i> <span>{PHP.L.hds0}</span></a></li>
						<li id="hdn"><a href="#" class="btn btn-mini btn-block disabled" rel="{PHP.L.hdn0} / {PHP.L.hdn1}"><i class="icon-resize-vertical"></i> <span>{PHP.L.hdn0}</span></a></li>
						<li id="str"><a href="#" class="btn btn-mini btn-block disabled" rel="{PHP.L.str0} / {PHP.L.str1}"><i class="icon-fullscreen"></i> <span>{PHP.L.str0}</span></a></li>
						<li id="rem"><a href="#" class="btn btn-mini btn-block disabled"><i class="icon-remove"></i> <span>{PHP.L.Reset}</span></a></li>
					</ul>
					<ul id="settings">
						<li>
							<a href="{PHP.cfg.mainurl}" title="{PHP.L.hea_viewsite}" class="btn btn-mini btn-block disabled">
								<i class="icon-external-link"></i> <span><!-- IF {PHP.cfg.maintitle} && {PHP.cfg.maintitle|mb_strlen} < 50 -->{PHP.cfg.maintitle}<!-- ELSE -->{PHP.L.hea_viewsite}</span><!-- ENDIF -->
							</a>
						</li>
						<li>
							<a href="{PHP|cot_url('users','m=profile')}" class="btn btn-mini btn-block disabled">
								<i class="icon-user"></i> <span>{PHP.usr.name}</span>
							</a>
						</li>
						<li class="loginout">{PHP.out.loginout}</li>
					</ul>
				</div>
			</div>
		</div>	
	
	<div id="wrapper">
	
		<div id="sidebar">
		
			<a href="{PHP|cot_url('admin')}" id="logo">{PHP.L.admin-panel}</a>
			<div id="profile">
				<p>{PHP.L.admin-hi}, <a href="{PHP|cot_url('users','m=profile')}">{PHP.usr.name}</a></p>
				<i class="icon-user icon-3x icon-border pull-left"></i>
				<ul>
					<li><a class="btn btn-mini btn-block disabled" href="{PHP|cot_url('users','m=profile')}"><i class="icon-user-md"></i> {PHP.L.Profile}</a></li>
					<li><a class="btn btn-mini btn-block disabled" href="{PHP|cot_url('users','m=details')}"><i class="icon-file-alt"></i> {PHP.L.Page}</a></li>
					<li><a class="btn btn-mini btn-block disabled" href="{PHP|cot_url('pm','')}"><i class="icon-comment-alt"></i> {PHP.L.Private_Messages}</a></li>
					<li class="loginout">{PHP.out.loginout}</li>
				</ul>
			</div>
			
			<div id="menu" class="accordion">
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#menu" href="#mainnav">
							<i class="icon-dashboard"></i> {PHP.L.Navigation}
						</a>
					</div>
					<div id="mainnav" class="accordion-body collapse">
						<ul class="accordion-inner">
							<li><i class="icon-li icon-home"></i><a href="{PHP|cot_url('admin')}">{PHP.L.Home}</a></li>
							<li><i class="icon-li icon-cog"></i><a href="{PHP|cot_url('admin', 'm=config')}">{PHP.L.Configuration}</a></li>
							<li><i class="icon-li icon-sitemap"></i><a href="{PHP|cot_url('admin', 'm=structure')}">{PHP.L.Structure}</a></li>
							<li><i class="icon-li icon-puzzle-piece"></i><a href="{PHP|cot_url('admin', 'm=extensions')}">{PHP.L.Extensions}</a></li>
							<li><i class="icon-li icon-user"></i><a href="{PHP|cot_url('admin', 'm=users')}">{PHP.L.Users}</a></li>
							<li><i class="icon-li icon-wrench"></i><a href="{PHP|cot_url('admin', 'm=other')}">{PHP.L.Other}</a></li>
						</ul>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#menu" href="#general">
							<i class="icon-cogs"></i> {PHP.L.home_ql_b1_title}
						</a>
					</div>
					<div id="general" class="accordion-body collapse">
						<ul class="accordion-inner">
							<li><i class="icon-li icon-cog"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}">{PHP.L.home_ql_b1_1}</a></li>
							<li><i class="icon-li icon-code"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}">{PHP.L.home_ql_b1_2}</a></li>
							<li><i class="icon-li icon-adjust"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}">{PHP.L.home_ql_b1_3}</a></li>
							<li><i class="icon-li icon-tasks"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=menus')}">{PHP.L.home_ql_b1_4}</a></li>
							<li><i class="icon-li icon-globe"></i><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=locale')}">{PHP.L.Locale}</a></li>
							<li><i class="icon-li icon-reorder"></i><a href="{PHP|cot_url('admin','m=extrafields')}">{PHP.L.adm_extrafields}</a></li>
						</ul>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#menu" href="#pages">
							<i class="icon-copy"></i> {PHP.L.Pages}
						</a>
					</div>
					<div id="pages" class="accordion-body collapse">
						<ul class="accordion-inner">
							<li><i class="icon-li icon-ban-circle"></i><a href="{PHP|cot_url('admin','m=page')}">{PHP.sys.pagesqueued|cot_declension($this, 'Pages')} {PHP.L.admin-queued}</a></li>
							<li><i class="icon-li icon-plus-sign"></i><a href="{PHP|cot_url('page','m=add')}">{PHP.L.Add}</a></li>
							<li><i class="icon-li icon-reorder"></i><a href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_ql_b2_2}</a></li>
						</ul>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#menu" href="#users">
							<i class="icon-user-md"></i> {PHP.L.Users}
						</a>
					</div>
					<div id="users" class="accordion-body collapse">
						<ul class="accordion-inner">
							<li><i class="icon-li icon-cog"></i><a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=users')}">{PHP.L.home_ql_b3_1}</a></li>
							<li><i class="icon-li icon-reorder"></i><a href="{PHP.db_users|cot_url('admin','m=extrafields&amp;n=$this')}">{PHP.L.home_ql_b3_2}</a></li>
							<li><i class="icon-li icon-lock"></i><a href="{PHP|cot_url('admin','m=users')}">{PHP.L.home_ql_b3_4}</a></li>
						</ul>
					</div>
				</div>
			</div>
			
<!-- IF {PHP.cot_plugins_active.adminstats} -->
			<div class="miniwidget">
				<strong>{PHP.L.Engine}:</strong>
				<ul class="unstyled">
					<li>{PHP.adminstats.version.title}: <span class="pull-right">{PHP.adminstats.version.value}</span></li>
					<li>{PHP.adminstats.database.title}: <span class="pull-right">{PHP.adminstats.database.value}</span></li>
					
					<li>{PHP.adminstats.defaulttheme.title}: <span class="pull-right">{PHP.adminstats.defaulttheme.value}</span></li>
					<li>{PHP.adminstats.defaultscheme.title}: <span class="pull-right lower">{PHP.adminstats.defaultscheme.value}</span></li>
					<li>{PHP.adminstats.defaulticons.title}: <span class="pull-right lower">{PHP.adminstats.defaulticons.value}</span></li>
					<li>{PHP.adminstats.defaultlang.title}: <span class="pull-right">{PHP.adminstats.defaultlang.value}</span></li>
					<li>{PHP.adminstats.admintheme.title}: <span class="pull-right">{PHP.adminstats.admintheme.value}</span></li>
					
					<li>{PHP.adminstats.active_modules.title}: <span class="pull-right">{PHP.adminstats.active_modules.value} {PHP.L.Of} {PHP.adminstats.modules.value}</span></li>
					<li>{PHP.adminstats.active_plugins.title}: <span class="pull-right">{PHP.adminstats.active_plugins.value} {PHP.L.Of} {PHP.adminstats.plugins.value}</span></li>
					<li>{PHP.adminstats.active_hooks.title}: <span class="pull-right">{PHP.adminstats.active_hooks.value} {PHP.L.Of} {PHP.adminstats.hooks.value}</span></li>
					
					<li>{PHP.adminstats.check_updates.title}: <span class="pull-right lower">{PHP.adminstats.check_updates.value}</span></li>
					<li>{PHP.adminstats.debug_mode.title}: <span class="pull-right lower">{PHP.adminstats.debug_mode.value}</span></li>
				</ul>
			</div>
			<hr>
			<div class="miniwidget">
				<strong>{PHP.L.Activityfor} {PHP.R.Recent|cot_declension($this, Days)}:</strong>
				<ul class="unstyled">
<!-- IF {PHP.cot_modules.page} -->
					<li>{PHP.L.Newpages}: <span class="pull-right">{PHP.R.Recent|item_counter('page', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.comments} -->
					<li>{PHP.L.Newcomments}: <span class="pull-right">{PHP.R.Recent|item_counter('comments', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.forums} -->
					<li>{PHP.L.Newposts}: <span class="pull-right">{PHP.R.Recent|item_counter('posts', $this)}</span></li>
					<li>{PHP.L.Newtopics}: <span class="pull-right">{PHP.R.Recent|item_counter('topics', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.pm} -->
					<li>{PHP.L.Newpm}: <span class="pull-right">{PHP.R.Recent|item_counter('pm', $this)}</span></li>
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.polls} -->
					<li>{PHP.L.Newpolls}: <span class="pull-right">{PHP.R.Recent|item_counter('polls', $this)}</span></li>
<!-- ENDIF -->
					<li>{PHP.L.Newusers}: <span class="pull-right">{PHP.R.Recent|item_counter('users_reg', $this)}</span></li>
					<li>{PHP.L.Retusers}: <span class="pull-right">{PHP.R.Recent|item_counter('users', $this)}</span></li>
				</ul>
			</div>
			<hr>
<!-- ENDIF -->
			
			<div class="miniwidget">
				<p>Powered by <a href="http://www.cotonti.com">Cotonti Siena</a></p>
				<p>Theme developed by <a href="http://www.seditio.by">Seditio.by</a></p>
			</div>
			
			<hr>

		</div>
	
		<div id="content">
	
		<div class="row-fluid hidden-phone">
			<div class="span12">
				<div id="breadcrumbs">
					{ADMIN_TITLE}
				</div>
			</div>
		</div>

		<nav>
			<h1><!-- IF {ADMIN_SUBTITLE} -->{ADMIN_SUBTITLE}<!-- ELSE -->{PHP.L.Home}<!-- ENDIF --></h1>
			<div class="row-fluid">
				<div class="span2">
					<a href="{PHP|cot_url('admin')}" class="<!-- IF !{PHP.m} -->sel<!-- ENDIF -->" title="{PHP.L.Administration}">
						<i class="icon-dashboard"></i>
						<span>{PHP.L.Home}</span>
					</a>
				</div>
<!-- IF {PHP.usr.admin_config} -->
				<div class="span2">
					<a href="{PHP|cot_url('admin', 'm=config')}" class="<!-- IF {PHP.m} == 'config' -->sel<!-- ENDIF -->" title="{PHP.L.Configuration}">
						<i class="icon-cog"></i>
						<span>{PHP.L.Configuration}</span>
					</a>
				</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.admin_structure} -->
				<div class="span2">
					<a href="{PHP|cot_url('admin', 'm=structure')}" class="<!-- IF {PHP.m} == 'structure' -->sel<!-- ENDIF -->" title="{PHP.L.Structure}">
						<i class="icon-sitemap"></i>
						<span>{PHP.L.Structure}</span>
					</a>
				</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.admin_config} -->
				<div class="span2">
					<a href="{PHP|cot_url('admin', 'm=extensions')}" class="<!-- IF {PHP.m} == 'extensions' -->sel<!-- ENDIF -->" title="{PHP.L.Extensions}">
						<i class="icon-puzzle-piece"></i>
						<span>{PHP.L.Extensions}</span>
					</a>
				</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.admin_users} -->
				<div class="span2">
					<a href="{PHP|cot_url('admin', 'm=users')}" class="<!-- IF {PHP.m} == 'users' -->sel<!-- ENDIF -->" title="{PHP.L.Users}">
						<i class="icon-user"></i>
						<span>{PHP.L.Users}</span>
					</a>
				</div>
<!-- ENDIF -->
				<div class="span2">
					<a href="{PHP|cot_url('admin', 'm=other')}" class="<!-- IF {PHP.m} == 'other' -->sel<!-- ENDIF -->" title="{PHP.L.Other}">
						<i class="icon-wrench"></i>
						<span>{PHP.L.Other}</span>
					</a>
				</div>
			</div>
		</nav>

	<div id="ajaxBlock">

<!-- BEGIN: BODY -->

		{ADMIN_MAIN}
		
<!-- IF {ADMIN_HELP} -->
		<div class="row-fluid">
			<div class="alert alert-info">
				<h4>{PHP.L.Help}:</h4>
				<p>{ADMIN_HELP}</p>
			</div>
		</div>
<!-- ENDIF -->

<!-- END: BODY -->

	</div>
	
	</div>
	
	</div>
	</div>

<!-- END: MAIN -->