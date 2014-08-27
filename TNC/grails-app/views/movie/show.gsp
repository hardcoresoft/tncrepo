
<%@ page import="com.tnc.mgt.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-movie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list movie">
			
				<g:if test="${movieInstance?.movieNameTH}">
				<li class="fieldcontain">
					<span id="movieNameTH-label" class="property-label"><g:message code="movie.movieNameTH.label" default="Movie Name TH" /></span>
					
						<span class="property-value" aria-labelledby="movieNameTH-label"><g:fieldValue bean="${movieInstance}" field="movieNameTH"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.movieNameEN}">
				<li class="fieldcontain">
					<span id="movieNameEN-label" class="property-label"><g:message code="movie.movieNameEN.label" default="Movie Name EN" /></span>
					
						<span class="property-value" aria-labelledby="movieNameEN-label"><g:fieldValue bean="${movieInstance}" field="movieNameEN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.movieNameDisplay}">
				<li class="fieldcontain">
					<span id="movieNameDisplay-label" class="property-label"><g:message code="movie.movieNameDisplay.label" default="Movie Name Display" /></span>
					
						<span class="property-value" aria-labelledby="movieNameDisplay-label"><g:fieldValue bean="${movieInstance}" field="movieNameDisplay"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.duration}">
				<li class="fieldcontain">
					<span id="duration-label" class="property-label"><g:message code="movie.duration.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="duration-label"><g:fieldValue bean="${movieInstance}" field="duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.director}">
				<li class="fieldcontain">
					<span id="director-label" class="property-label"><g:message code="movie.director.label" default="Director" /></span>
					
						<span class="property-value" aria-labelledby="director-label"><g:fieldValue bean="${movieInstance}" field="director"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.actor}">
				<li class="fieldcontain">
					<span id="actor-label" class="property-label"><g:message code="movie.actor.label" default="Actor" /></span>
					
						<span class="property-value" aria-labelledby="actor-label"><g:fieldValue bean="${movieInstance}" field="actor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.synopsis}">
				<li class="fieldcontain">
					<span id="synopsis-label" class="property-label"><g:message code="movie.synopsis.label" default="Synopsis" /></span>
					
						<span class="property-value" aria-labelledby="synopsis-label"><g:fieldValue bean="${movieInstance}" field="synopsis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.releasedDate}">
				<li class="fieldcontain">
					<span id="releasedDate-label" class="property-label"><g:message code="movie.releasedDate.label" default="Released Date" /></span>
					
						<span class="property-value" aria-labelledby="releasedDate-label"><g:formatDate date="${movieInstance?.releasedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.exiprationDate}">
				<li class="fieldcontain">
					<span id="exiprationDate-label" class="property-label"><g:message code="movie.exiprationDate.label" default="Exipration Date" /></span>
					
						<span class="property-value" aria-labelledby="exiprationDate-label"><g:formatDate date="${movieInstance?.exiprationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.activeStatus}">
				<li class="fieldcontain">
					<span id="activeStatus-label" class="property-label"><g:message code="movie.activeStatus.label" default="Active Status" /></span>
					
						<span class="property-value" aria-labelledby="activeStatus-label"><g:formatBoolean boolean="${movieInstance?.activeStatus}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="movie.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${movieInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.filmCategories}">
				<li class="fieldcontain">
					<span id="filmCategories-label" class="property-label"><g:message code="movie.filmCategories.label" default="Film Categories" /></span>
					
						<g:each in="${movieInstance.filmCategories}" var="f">
						<span class="property-value" aria-labelledby="filmCategories-label"><g:link controller="filmCategory" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="movie.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${movieInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.movieImage}">
				<li class="fieldcontain">
					<span id="movieImage-label" class="property-label"><g:message code="movie.movieImage.label" default="Movie Image" /></span>
					<span class="property-value" aria-labelledby="movieImage-label">
						<img class="avatar" src="${createLink(controller:'movie', action:'showThumbnail', id:movieInstance.id)}" />
					</span>
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.rate}">
				<li class="fieldcontain">
					<span id="rate-label" class="property-label"><g:message code="movie.rate.label" default="Rate" /></span>
					
						<span class="property-value" aria-labelledby="rate-label"><g:link controller="movieRate" action="show" id="${movieInstance?.rate?.id}">${movieInstance?.rate?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.showtimes}">
				<li class="fieldcontain">
					<span id="showtimes-label" class="property-label"><g:message code="movie.showtimes.label" default="Showtimes" /></span>
					
						<g:each in="${movieInstance.showtimes}" var="s">
						<span class="property-value" aria-labelledby="showtimes-label"><g:link controller="showtime" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:movieInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${movieInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
