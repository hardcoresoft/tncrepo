package com.tnc.mgt

import java.util.Date;

import com.tnc.user.User;

class Branch {

	static mapping = {}
	
	static constraints = {

		branchName 		nullable:false, unique:true, size:1..100
		description 	nullable:true, widget:"textarea", size:0..1000
		activeStatus 	nullable:false
	}

	String branchName
	String description
	Boolean activeStatus

	Date dateCreated
	Date lastUpdated

	static belongsTo = [createdBy:User, updatedBy:User]
}
