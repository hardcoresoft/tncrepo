package com.tnc.mgt

import java.util.Date;

class TheaterLayout {

	static mapping = {
		
	}
	
    static constraints = {
		layoutName 		nullable:false, unique:true, size:1..100
		seatRow 		nullable:false, min:1
		seatColumn  	nullable:false, min:1
		numsOfSeat  	nullable:false, min:0
		description 	size:0..500
	}

	Integer seatRow
	Integer seatColumn
	String layoutName
	String description
	Integer numsOfSeat
	Boolean activeStatus

	Date dateCreated
	Date lastUpdated
	
}
