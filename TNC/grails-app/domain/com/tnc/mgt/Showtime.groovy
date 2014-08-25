package com.tnc.mgt

import java.util.Date;

class Showtime {


	static mapping = {
	}

	static constraints = {
		showDatetime		blank:false, nullable: false, min: new Date()
		language			blank:false, nullable: false, size: 1..10
		description			blank:false, nullable: false, maxSize: 100, size: 1..1000, widget:'textarea'
	}

	Date showDatetime
	String language
	String description
	Boolean activeStatus

	Date dateCreated
	Date lastUpdated

	static belongsTo = [movie:Movie, theater:Theater]
	static hasMany = [showtimeSeats:ShowtimeSeat]
}
