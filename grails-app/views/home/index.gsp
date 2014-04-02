<g:form action="index">
<head>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'index.css')}" type="text/css">
</head>

<header>
<h1>Bacon Blog</h1>
<div class="search">
<label for="contentSearch">Search for Content:</label>
<g:textField name="searchQuery" />
<g:submitButton name="search" value="Search" />
</div>
</header>

</g:form>


<body>
<div class="extraInfo">
<g:if test="${params.tag}">
	filtering by <a class="postInfo">${params.tag}</a> tag
</g:if>
</div>
<g:each var="post" in="${posts}">
    <div class="post">
        <img src = "http://ec.l.thumbs.canstockphoto.com/canstock14029099.jpg" align = "left" width = "51" height = "75"/>
        <p class="title">${post.title}</p>
        <p class="postInfo">By <g:link controller="profile" action="view" params="[user:post.user.userId]" >${post.user.userId}</g:link>, ${post.dateCreated}</p>
        <p class="content">${post.content}</p>
		<p class="postInfo">
			tags: 
			<g:each var="tag" in="${post.tags}">
				<g:link controller="home" action="index" params="[tag:tag]">${tag}</g:link>, 
			</g:each>
		</p>
    </div>
</g:each>
</body>
