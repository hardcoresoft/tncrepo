
<%@ page import="com.tnc.mgt.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-movie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="movieNameTH" title="${message(code: 'movie.movieNameTH.label', default: 'Movie Name TH')}" />
					
						<g:sortableColumn property="movieNameEN" title="${message(code: 'movie.movieNameEN.label', default: 'Movie Name EN')}" />
					
						<g:sortableColumn property="movieNameDisplay" title="${message(code: 'movie.movieNameDisplay.label', default: 'Movie Name Display')}" />
					
						<g:sortableColumn property="duration" title="${message(code: 'movie.duration.label', default: 'Duration')}" />
					
						<g:sortableColumn property="director" title="${message(code: 'movie.director.label', default: 'Director')}" />
					
						<g:sortableColumn property="actor" title="${message(code: 'movie.actor.label', default: 'Actor')}" />
					
						<g:sortableColumn property="movieImage" title="${message(code: 'movie.movieImage.label', default: 'Movie Image')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${movieInstanceList}" status="i" var="movieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td style="vertical-align: middle;"><g:link action="show" id="${movieInstance.id}">${fieldValue(bean: movieInstance, field: "movieNameTH")}</g:link></td>
					
						<td style="vertical-align: middle;">${fieldValue(bean: movieInstance, field: "movieNameEN")}</td>
					
						<td style="vertical-align: middle;">${fieldValue(bean: movieInstance, field: "movieNameDisplay")}</td>
					
						<td style="vertical-align: middle;">${fieldValue(bean: movieInstance, field: "duration")}</td>
					
						<td style="vertical-align: middle;">${fieldValue(bean: movieInstance, field: "director")}</td>
					
						<td style="vertical-align: middle;">${fieldValue(bean: movieInstance, field: "actor")}</td>
					
						<td> <img class="avatar" src="${createLink(controller:'movie', action:'showThumbnail', id:movieInstance.id)}" /> </td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${movieInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
