package com.tnc.promotion

import java.util.Date;

import com.tnc.booking.Booking;

class Coupon {
	
	String couponCode;
	Date expirationDate;
	Boolean usagesStatus = false;
	
	static belongsTo = [promotion:Promotion, booking:Booking]

    static constraints = {
		couponCode nullable: false, unique: true, size: 1..10;
		expirationDate();
		usagesStatus();
    }
}
