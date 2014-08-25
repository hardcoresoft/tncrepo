package com.tnc.mgt

import java.util.Date;

class Theater {


	static mapping = {
	}

	static constraints = {
		theaterName			blank:false, nullable: false, maxLength:500, size: 1..500
		description			blank:false, nullable: false, maxSize: 100, size: 1..1000, widget:'textarea'
	}

	String theaterName
	String description
	Boolean activeStatus

	Date dateCreated
	Date lastUpdated

	static belongsTo = [branch:Branch]
	static hasMany = [showtime:Showtime]
}
