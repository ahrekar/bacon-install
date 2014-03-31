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
	font-size: 20px;
	font-weight:bold;
}
header {
	vertical-align:middle;
	width:auto;
	height:100px;
	background-color:#0000000;
}
.search {
	padding-top:50px;
	float:right;
	height:100px;
  	display: inline-block;
}
.postInfo {
	font-size: 12px;
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
        <p class="postInfo">By ${post.user.userId}, ${post.dateCreated}</p>
        <p>${post.content}</p>
		<p class="postInfo">
			tags: 
			<g:each var="tag" in="${post.tags}">
				<a href="#tag=${tag}">${tag}</a>, 
			</g:each>
		</p>
    </div>
</g:each>
