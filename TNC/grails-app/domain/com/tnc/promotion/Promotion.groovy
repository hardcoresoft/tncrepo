package com.tnc.promotion

import java.util.Date;

class Promotion {
	
	String promotionName;
	String description;
	Date effectiveDate;
	Date expirationDate;
	Date dateCreated;
	Date lastUpdated;
	Boolean activeStatus = false;
	Boolean isPrintCoupon = false;
	Boolean isTerminate = false;
	
	static belongsTo = [promotionType:PromotionType]
	static hasMany = [coupons:Coupon, promotionCriterias:PromotionCriteria];

    static constraints = {
		promotionName nullable: false, unique: true ,size: 1..500;
		description size: 1..1000;
		effectiveDate nullable: false;
		expirationDate nullable: false;
		dateCreated();
		lastUpdated();
		activeStatus();
		isPrintCoupon();
		isTerminate();
    }
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return promotionName;
	}
}
