package com.tnc.promotion

import java.util.Date;

class PromotionType {
	
	String promotionTypeName;
	String description;
	Date dateCreated;
	Date lastUpdated;
	Boolean activeStatus = false;   

	static hasMany = [promotions:Promotion];
	
    static constraints = {
		promotionTypeName nullable: false, unique: true ,size: 1..500;
		description size: 1..1000;
		activeStatus();
		dateCreated();
		lastUpdated();
		
    }
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return promotionTypeName;
	}
}
