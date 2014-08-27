package com.tnc.mgt

import java.awt.TexturePaintContext.Byte;
import java.sql.Blob

class Movie {



	static mapping = {
		movieImage column:'movieImage', sqltype:'blob'
	}

	static constraints = {

		movieNameTH 		blank:false, nullable: false, maxSize:500
		movieNameEN 		blank:false, nullable: false, maxSize:500
		movieNameDisplay	blank:false, nullable: false, maxSize:500
		duration			blank:false, nullable: false
		director 			blank:false, nullable: false, maxSize: 500, widget:'textarea'
		actor 				blank:false, nullable: false, maxSize: 500, widget:'textarea'
		synopsis 			widget:'textarea', maxSize: 2000
		releasedDate 		blank:false, nullable: false, min: new Date().clearTime()  
		exiprationDate 		blank:false, nullable: false, min: new Date().clearTime()
		activeStatus 		widget:'radio'
		//		movieImage 			nullable: true,  maxSize:1024
	}

	String movieNameTH
	String movieNameEN
	String movieNameDisplay
	Date releasedDate
	Date exiprationDate
	Integer duration
	byte[] movieImage
	String synopsis
	String director
	String actor
	Boolean activeStatus = true

	Date dateCreated
	Date lastUpdated

	static belongsTo = [rate:MovieRate]
	static hasMany = [filmCategories:FilmCategory, showtimes:Showtime]
}
