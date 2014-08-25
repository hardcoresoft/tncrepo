package com.tnc.booking

import java.util.Date;

import org.springframework.jdbc.core.SqlTypeValue;

import com.tnc.mgt.Showtime;
import com.tnc.promotion.Coupon;
import com.tnc.user.Member;
import com.tnc.user.User;

class Booking {

	static mapping = {}

	static constraints = {
		bookingNo		blank:false, unique:true, size: 1..20
		bookingDate		validator: {return (it >= new Date().clearTime())}
	}

	static belongsTo = [showTime:Showtime, createdBy:User, member:Member]
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
