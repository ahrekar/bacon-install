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

<h2>User name: ${user.userId}</h2>
<h2>Full name: ${user.profile.fullname}</h2>
<h2>email:<a href="mailto:${user.profile.email}">${user.profile.email}</a></h2>
<h2>webaddress:<a href="${user.profile.webaddress}">${user.profile.webaddress}</a></h2>
<h2>country: ${user.profile.country}</h2>
<h2>bio: ${user.profile.bio}</h2>
</body>
