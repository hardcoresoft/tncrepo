package com.tnc.user

class Member {

	static mapping = {}

	static constraints = {
		memberCode 	nullable:false, blank:false, unique:true, maxSize:10
		firstname 	nullable:false, blank:false, maxSize:50
		lastname 	maxSize:50
		phoneNo 	maxSize:20
		email 		maxSize:100
		address 	maxSize:100
	}

	String memberCode
	String firstname
	String lastname
	Date birthdate
	String phoneNo
	String email
	String address
	
}
