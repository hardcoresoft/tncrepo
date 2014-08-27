<%@ page import="com.tnc.mgt.Movie" %>



<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'movieNameTH', 'error')} required">
	<label for="movieNameTH">
		<g:message code="movie.movieNameTH.label" default="Movie Name TH" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="movieNameTH" maxlength="500" required="" value="${movieInstance?.movieNameTH}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'movieNameEN', 'error')} required">
	<label for="movieNameEN">
		<g:message code="movie.movieNameEN.label" default="Movie Name EN" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="movieNameEN" maxlength="500" required="" value="${movieInstance?.movieNameEN}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'movieNameDisplay', 'error')} required">
	<label for="movieNameDisplay">
		<g:message code="movie.movieNameDisplay.label" default="Movie Name Display" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="movieNameDisplay" maxlength="500" required="" value="${movieInstance?.movieNameDisplay}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'duration', 'error')} required">
	<label for="duration">
		<g:message code="movie.duration.label" default="Duration" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="duration" type="number" value="${movieInstance.duration}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'director', 'error')} required">
	<label for="director">
		<g:message code="movie.director.label" default="Director" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="director" cols="40" rows="5" maxlength="100" required="" value="${movieInstance?.director}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'actor', 'error')} required">
	<label for="actor">
		<g:message code="movie.actor.label" default="Actor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="actor" cols="40" rows="5" maxlength="100" required="" value="${movieInstance?.actor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'synopsis', 'error')} ">
	<label for="synopsis">
		<g:message code="movie.synopsis.label" default="Synopsis" />
		
	</label>
	<g:textArea name="synopsis" cols="40" rows="5" maxlength="2000" value="${movieInstance?.synopsis}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'releasedDate', 'error')} required">
	<label for="releasedDate">
		<g:message code="movie.releasedDate.label" default="Released Date" />
		<span class="required-indicator">*</span>
	</label>
<%--	<g:datePicker name="releasedDate" precision="minute"  value="${movieInstance?.releasedDate}"  />--%>
<%--	<jqueryPicker:time name="releasedDate" value="${movieInstance?.releasedDate}" timeZone="${TimeZone.getTimeZone('GMT')}" />--%>
	<jqueryPicker:date name="releasedDate" value="${movieInstance.releasedDate}" />
	<jqueryPicker:time name="releasedDate" value="${movieInstance.releasedDate}" />

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'exiprationDate', 'error')} required">
	<label for="exiprationDate">
		<g:message code="movie.exiprationDate.label" default="Exipration Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="exiprationDate" precision="day"  value="${movieInstance?.exiprationDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'activeStatus', 'error')} ">
	<label for="activeStatus">
		<g:message code="movie.activeStatus.label" default="Active Status" />
		
	</label>
	<g:checkBox name="activeStatus" widget="radio" value="${movieInstance?.activeStatus}" />

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'filmCategories', 'error')} ">
	<label for="filmCategories">
		<g:message code="movie.filmCategories.label" default="Film Categories" />
		
	</label>
	<g:select name="filmCategories" from="${com.tnc.mgt.FilmCategory.list()}" multiple="multiple" optionKey="id" size="5" value="${movieInstance?.filmCategories*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'movieImage', 'error')} ">
	<label for="movieImage">
		<g:message code="movie.movieImage.label" default="Movie Image" />
		
	</label>
	<input type="file" id="movieImage" name="movieImage" />

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'rate', 'error')} ">
	<label for="rate">
		<g:message code="movie.rate.label" default="Rate" />
		
	</label>
	<g:select id="rate" name="rate.id" from="${com.tnc.mgt.MovieRate.list()}" optionKey="id" value="${movieInstance?.rate?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'showtimes', 'error')} ">
	<label for="showtimes">
		<g:message code="movie.showtimes.label" default="Showtimes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${movieInstance?.showtimes?}" var="s">
    <li><g:link controller="showtime" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="showtime" action="create" params="['movie.id': movieInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'showtime.label', default: 'Showtime')])}</g:link>
</li>
</ul>


</div>

