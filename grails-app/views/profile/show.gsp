
<%@ page import="edu.bvu.baconblog.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-profile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list profile">
			
				<g:if test="${profileInstance?.fullname}">
				<li class="fieldcontain">
					<span id="fullname-label" class="property-label"><g:message code="profile.fullname.label" default="Fullname" /></span>
					
						<span class="property-value" aria-labelledby="fullname-label"><g:fieldValue bean="${profileInstance}" field="fullname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="profile.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${profileInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.webaddress}">
				<li class="fieldcontain">
					<span id="webaddress-label" class="property-label"><g:message code="profile.webaddress.label" default="Webaddress" /></span>
					
						<span class="property-value" aria-labelledby="webaddress-label"><g:fieldValue bean="${profileInstance}" field="webaddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="profile.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${profileInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.bio}">
				<li class="fieldcontain">
					<span id="bio-label" class="property-label"><g:message code="profile.bio.label" default="Bio" /></span>
					
						<span class="property-value" aria-labelledby="bio-label"><g:fieldValue bean="${profileInstance}" field="bio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:profileInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${profileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
