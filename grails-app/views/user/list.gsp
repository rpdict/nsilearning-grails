<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bgmain">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="wrapper">
		<div class="content-wrapper" style="min-height: auto;">
		<section class="content-header">
      		<h1>
        			用户管理
        			<small>基本信息</small>
      		</h1>
      		<ol class="breadcrumb">
        			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        			<li><a href="#">管理</a></li>
        			<li class="active">基本信息</li>
      		</ol>
    		</section>
    		<section class="content">
		<div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><g:message code="default.list.label" args="[entityName]" /></h3>

              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody>
                <tr>
                  <g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
                	<g:sortableColumn property="address" title="${message(code: 'user.address.label', default: 'Address')}" />
									<g:sortableColumn property="birthday" title="${message(code: 'user.birthday.label', default: 'Birthday')}" />
									<g:sortableColumn property="dateCreated" title="${message(code: 'user.dateCreated.label', default: 'Date Created')}" />
									<g:sortableColumn property="department" title="${message(code: 'user.department.label', default: 'Department')}" />
									<g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
									<g:sortableColumn property="harvest" title="${message(code: 'user.harvest.label', default: 'Harvest')}" />
                </tr>
                <g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
						<td>${fieldValue(bean: userInstance, field: "address")}</td>
						<td><g:formatDate date="${userInstance.birthday}" /></td>
						<td><g:formatDate date="${userInstance.dateCreated}" /></td>
						<td>${fieldValue(bean: userInstance, field: "department")}</td>
						<td>${fieldValue(bean: userInstance, field: "email")}</td>
						<td>${fieldValue(bean: userInstance, field: "harvest")}</td>
					</tr>
				</g:each>
              </tbody></table>
            </div>
            <div class="box-footer clearfix">
              <ul class="pagination pagination-sm no-margin pull-right">
                	<%--<li><a href="#">«</a></li>
                	<li><a href="?offset=0&max=10">1</a></li>
                	<li><a href="?offset=0&max=10">2</a></li>
                	<li><a href="#">3</a></li>
                	<li><a href="#">»</a></li>
              --%>
              	<li><g:paginate total="${userInstanceTotal ?: 0}" /></li>
              </ul>
            </div>
            <!-- /.box-body -->
            </div>
          <!-- /.box -->
        </div>
      </div>
    </div>
    </section>
    </div>
</body>
</html>
