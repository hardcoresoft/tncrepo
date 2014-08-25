package com.tnc.mgt

import java.util.Date;

class FilmCategory {


	static mapping = {
	}

	static constraints = {
		filmCatNameTH 		blank:false, nullable: false, maxLength:500, size: 1..500
		filmCatNameEN 		blank:false, nullable: false, maxLength:500, size: 1..500
		description 		blank:false, nullable: false, maxLength:500, size: 1..1000, widget:'textarea'
	}

	
	String filmCatNameTH
	String filmCatNameEN
	String description
	Boolean activeStatus = true
	
	Date dateCreated
	Date lastUpdated
	
	static belongsTo = Movie
	static hasMany = [movies:Movie]
}
