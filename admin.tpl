<!-- BEGIN: MAIN -->

	<div class="container-fluid">
	<div id="wrap">
	
		<div class="row-fluid">
			<div class="span12">
				<div id="topbar">
					<button class="btn btn-navbar">
						<i class="icon-reorder"></i>
					</button>
					<ul class="pull-right">
						<li>
							<a href="{PHP.cfg.mainurl}" title="{PHP.L.hea_viewsite}" id="home">
								<!-- IF {PHP.cfg.maintitle} && {PHP.cfg.maintitle|mb_strlen} < 50 -->{PHP.cfg.maintitle} <!-- ELSE -->{PHP.L.hea_viewsite} <!-- ENDIF -->
							</a>
						</li>
						<li><a href="{PHP|cot_url('users','m=profile')}">{PHP.usr.name}</a></li>
						<li>{PHP.out.loginout}</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="row-fluid">
			<div class="span12">
				<div id="breadcrumbs">
					{ADMIN_TITLE}
				</div>
			</div>
		</div>

		<nav>
			<h1>Section Name</h1>
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

<!-- END: MAIN -->