<!-- BEGIN: MAIN -->

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div id="breadcrumbs">
					{ADMIN_TITLE}
				</div>
			</div>
		</div>
	</div>

	<nav>
		<div class="container-fluid">
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
		</div>
	</nav>

	<div id="ajaxBlock">

<!-- BEGIN: BODY -->

		{ADMIN_MAIN}
		
<!-- IF {ADMIN_HELP} -->
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="alert alert-info">
				<h4>{PHP.L.Help}:</h4>
				<p>{ADMIN_HELP}</p>
			</div>
		</div>
	</div>
<!-- ENDIF -->

<!-- END: BODY -->

	</div>

<!-- END: MAIN -->