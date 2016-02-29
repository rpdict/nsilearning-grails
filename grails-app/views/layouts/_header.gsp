<div id="header">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/nsilearning/">nsilearning</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li <g:if test="${params.controller == 'navigation' && params.action == 'index'}">class="active"</g:if>><a href="/nsilearning/navigation/index">首页</a></li>
					<li <g:if test="${params.controller == 'navigation' && params.action == 'blog'}">class="active"</g:if>><a href="/nsilearning/navigation/blog">博客</a></li>
					<li <g:if test="${params.controller == 'navigation' && params.action == 'about'}">class="active"</g:if>><a href="/nsilearning/navigation/about">关于</a></li>
					<g:if test="${session?.adminlevel > 2}">
						<li <g:if test="${params.controller == 'user' && params.action == 'list'}">class="active"</g:if>><a href="/nsilearning/user/list">管理</a></li>
					</g:if>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<g:if test="${session.username == null}">
						<li <g:if test="${params.controller == 'user' && params.action == 'login'}">class="active"</g:if>><a href="/nsilearning/user/login">登录</a></li>
						<li <g:if test="${params.controller == 'user' && params.action == 'create'}">class="active"</g:if>><a href="/nsilearning/user/create">注册</a></li>
					</g:if>
					<g:else>
						<li><g:link controller="user" action="logout">注销</g:link></li>
					</g:else>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</nav>
</div>