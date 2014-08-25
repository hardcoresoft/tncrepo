package com.tnc.promotion

import java.util.Date;

class PromotionCriteria {
	
	String criteriaName;
	String description;
	String criteriaType;
	String operand;
	String conditionDescription;
	Date dateCreated;
	Date lastUpdated;
	Boolean activeStatus = false;
	
	static belongsTo = [promotion:Promotion];

    static constraints = {
		criteriaName nullable: false, unique: true ,size: 1..500;
		criteriaType nullable: false, size: 1..500;
		description size: 1..1000;
		operand nullable: false, size: 1..10;
		conditionDescription nullable: false, size: 1..500;
		activeStatus();
		dateCreated();
		lastUpdated(); 
    }
}
