<%@ page import="edu.bvu.baconblog.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="user.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userId" required="" value="${userInstance?.userId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="12" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'profile', 'error')} ">
	<label for="profile">
		<g:message code="user.profile.label" default="Profile" />
		
	</label>
	<g:select id="profile" name="profile.id" from="${edu.bvu.baconblog.Profile.list()}" optionKey="id" value="${userInstance?.profile?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'following', 'error')} ">
	<label for="following">
		<g:message code="user.following.label" default="Following" />
		
	</label>
	<g:select name="following" from="${edu.bvu.baconblog.User.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.following*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'posts', 'error')} ">
	<label for="posts">
		<g:message code="user.posts.label" default="Posts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.posts?}" var="p">
    <li><g:link controller="post" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="post" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'post.label', default: 'Post')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="user.tags.label" default="Tags" />
		
	</label>
	<g:select name="tags" from="${edu.bvu.baconblog.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.tags*.id}" class="many-to-many"/>

</div>

