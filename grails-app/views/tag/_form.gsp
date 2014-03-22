<%@ page import="edu.bvu.baconblog.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="tag.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${tagInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'posts', 'error')} ">
	<label for="posts">
		<g:message code="tag.posts.label" default="Posts" />
		
	</label>
	<g:select name="posts" from="${edu.bvu.baconblog.Post.list()}" multiple="multiple" optionKey="id" size="5" value="${tagInstance?.posts*.id}" class="many-to-many"/>

</div>

