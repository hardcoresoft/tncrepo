package com.tnc.mgt

import java.util.Date;

import com.tnc.user.User

class SeatLayout {

	static mapping = {
		
	}
	
    static constraints = {
		seatType 		nullable:false, unique:true, size:1..100
		seatPrice 		nullable:false, min:0.00
		description 	size:0..500
		seatColor 		size:0..10
    }
	
	String seatType
	String seatColor
	BigDecimal seatPrice
	String description
	Boolean activeStatus
	
	Date dateCreated
	Date lastUpdated
	
	static belongsTo = [createdBy:User, updatedBy:User]
	
	
}
