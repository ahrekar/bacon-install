<g:form action="index">
<label for="contentSearch">Search for Content:</label>
<g:textField name="searchQuery" />
<g:submitButton name="search" value="Search" />
</g:form>
<g:each var="post" in="${posts}">
    <div style="padding: 3px; border: 1px solid black;">
        <p>${post.title}</p>
        <p>By ${post.user.userId}, ${post.dateCreated}</p>
        <p>${post.content}</p>
		<p>
			tags: 
			<g:each var="tag" in="${post.tags}">
				${tag}, 
			</g:each>
		</p>
		%{-- <p>${post.tags}</p> --}%
		%{-- <p><g:each var="tag" in="${Tag.findByPost(post)}"> </g:each> --}%
    </div>
</g:each>
