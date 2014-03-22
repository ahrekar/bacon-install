
<%@ page import="edu.bvu.baconblog.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fullname" title="${message(code: 'profile.fullname.label', default: 'Fullname')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'profile.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="webaddress" title="${message(code: 'profile.webaddress.label', default: 'Webaddress')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'profile.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="bio" title="${message(code: 'profile.bio.label', default: 'Bio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profileInstanceList}" status="i" var="profileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profileInstance.id}">${fieldValue(bean: profileInstance, field: "fullname")}</g:link></td>
					
						<td>${fieldValue(bean: profileInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "webaddress")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: profileInstance, field: "bio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profileInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
