<g:form action="index">
<label for="author">Author:</label>
<g:textField name="author" />
<g:submitButton name="search" value="Search" />
</g:form>
<g:each var="post" in="${posts}">
    <div style="padding: 3px; border: 1px solid black;">
        <p>${post.title}</p>
        <p>By ${post.user.userId}, ${post.dateCreated}</p>
        <p>${post.content}</p>
		%{-- <p><g:each var="tag" in="${post.tags}"> </g:each> --}%
    </div>
</g:each>
