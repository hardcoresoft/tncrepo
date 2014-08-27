package com.tnc.booking

import java.util.Date;

import com.tnc.mgt.Showtime;
import com.tnc.promotion.Coupon;
import com.tnc.user.Member;

class Booking {

	static mapping = {}

	static constraints = {
		bookingNo		blank:false, unique:true, maxSize: 20
		bookingDate		validator: {return (it >= new Date().clearTime())}
	}

	static belongsTo = [showTime:Showtime]
	static hasMany = [tickets:Ticket, coupons:Coupon]

	String bookingNo
	Date bookingDate

	BigDecimal totalAmount
	BigDecimal discount
	BigDecimal netAmount
	Integer numsOfTicket

	Date dateCreated

	//	static mapping = {
	//		table name: "booking"
	//		id generator: "assigned"
	//		id name: "bookingNo"
	//	}



}
