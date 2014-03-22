<%@ page import="edu.bvu.baconblog.Profile" %>



<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'fullname', 'error')} required">
	<label for="fullname">
		<g:message code="profile.fullname.label" default="Fullname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullname" required="" value="${profileInstance?.fullname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="profile.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${profileInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'webaddress', 'error')} ">
	<label for="webaddress">
		<g:message code="profile.webaddress.label" default="Webaddress" />
		
	</label>
	<g:field type="url" name="webaddress" value="${profileInstance?.webaddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="profile.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${profileInstance?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'bio', 'error')} ">
	<label for="bio">
		<g:message code="profile.bio.label" default="Bio" />
		
	</label>
	<g:textArea name="bio" cols="40" rows="5" maxlength="4096" value="${profileInstance?.bio}"/>

</div>

