package com.tnc.booking

import java.util.Date;

class Ticket {

	static mapping = {
	}

	static constraints = {
		ticketNo		blank:false, maxSize:10
		ticketSeatNo	blank:false, maxSize:10
		ticketPrice 	nullable: false, min:0.00
		ticketSeq 		nullable:false, min:1
	}


	static belongsTo = [booking:Booking]
	
	String ticketNo
	String ticketSeatNo
	BigDecimal ticketPrice
	Integer ticketSeq
}
