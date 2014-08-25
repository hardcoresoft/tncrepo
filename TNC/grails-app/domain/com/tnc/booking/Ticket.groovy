package com.tnc.booking

import java.util.Date;

class Ticket {

	static mapping = {}

	static constraints = {
		ticketNo		blank:false, size:1..10
		ticketSeatNo	blank:false, size:1..10
		ticketSeatPrice nullable: false, min:0.00
		ticketSeq 		nullable:false, min:1
	}


	static belongsTo = [booking:Booking]

	String ticketNo
	String ticketSeatNo
	BigDecimal ticketSeatPrice
	Integer ticketSeq
}
