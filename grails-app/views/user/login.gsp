<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta name="layout" content="main">
		<title>login</title>
		<asset:stylesheet src="login.css"/>
		<asset:javascript src="ie-emulation-modes-warning.js" />
	</head>
	<body>
		<g:hasErrors bean="${raceInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${raceInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:if test="${flash.message}">
			<div class="message" role="status" style="font-size: 46px;color: red;text-align: center;padding-top: 40px;"><p>${flash.message}</p></div>
		</g:if>
		<div class="container">
			<g:form class="form-signin" url="[resource:userInstance, action:'authenticate']" method="post">
				<h2 class="form-signin-heading">Please login</h2>
				<label for="login" class="sr-only">Username</label>
				<input type="text" id="login" name="username" class="form-control" placeholder="Username" required autofocus>
				<label for="inputPassword" class="sr-only">Password</label>
				<input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required>
				<div class="checkbox">
					<label>
						<input type="checkbox" name="remember" value="remember-me"> Remember me （未实现）
					</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit" value="Login">login</button>
			</g:form>
		</div> <!-- /container -->
	</body>
</html>
