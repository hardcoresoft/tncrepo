package com.tnc.mgt

import java.util.Date;

class MovieRate {


	static mapping = {
	}

	static constraints = {
		movieRateName 		blank:false, nullable: false, maxLength:500, size: 1..500
		description			blank:false, nullable: false, maxLength:500, size: 1..1000, widget: 'textarea'
	}

	String movieRateName
	String description
	Boolean activeStatus = true

	Date dateCreated
	Date lastUpdated

	static  hasMany = [movies:Movie]
}
