<g:form action="index">
<head>
<style type="text/css">
h1 {
	float:left;
	font-family: Georgia, "Times New Roman", Times, serif;
	color:#660099;
	font-size: 36px;
	font-weight:bolder;
	font-style: normal;
}
.title {
	color:#660099;
	font-size: 16px;
	font-weight:bold;
}
header {
	width:auto;
	height:100px;
	background-color:#0000000;
}
.search {
	float:right;
	height:100px;
	margin-top:auto;
	margin-bottom:auto;
}
</style>
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
<g:each var="post" in="${posts}">
    <div style="padding: 3px; border: 1px solid black;">
        <p class="title">${post.title}</p>
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
