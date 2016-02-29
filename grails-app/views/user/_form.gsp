<%@ page import="nsilearning.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="user.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${userInstance?.address}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthday', 'error')} ">
	<label for="birthday">
		<g:message code="user.birthday.label" default="Birthday" />
		
	</label>
	<g:datePicker name="birthday" precision="day" value="${userInstance?.birthday}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'department', 'error')} ">
	<label for="department">
		<g:message code="user.department.label" default="Department" />
		
	</label>
	<g:textField name="department" value="${userInstance?.department}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${userInstance?.email}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'harvest', 'error')} ">
	<label for="harvest">
		<g:message code="user.harvest.label" default="Harvest" />
		
	</label>
	<g:textField name="harvest" value="${userInstance?.harvest}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'hobby', 'error')} ">
	<label for="hobby">
		<g:message code="user.hobby.label" default="Hobby" />
		
	</label>
	<g:textField name="hobby" value="${userInstance?.hobby}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${userInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${userInstance?.password}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'school', 'error')} ">
	<label for="school">
		<g:message code="user.school.label" default="School" />
		
	</label>
	<g:textField name="school" value="${userInstance?.school}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'sex', 'error')} ">
	<label for="sex">
		<g:message code="user.sex.label" default="Sex" />
		
	</label>
	<g:textField name="sex" value="${userInstance?.sex}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'tel', 'error')} ">
	<label for="tel">
		<g:message code="user.tel.label" default="Tel" />
		
	</label>
	<g:field type="number" name="tel" value="${userInstance.tel}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'text', 'error')} ">
	<label for="text">
		<g:message code="user.text.label" default="Text" />
		
	</label>
	<g:textField name="text" value="${userInstance?.text}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${userInstance?.username}" />

</div>

