package com.tnc.user

class Member {

	static mapping = {}

	static constraints = {
		memberCode 	nullable:false, blank:false, unique:true, size:1..10
		firstname 	nullable:false, blank:false, size:1..50
		lastname 	size:1..50
		phoneNo 	size:1..20
		email 		size:1..100
		address 	size:1..500
		
	}

	String memberCode
	String firstname
	String lastname
	Date birthdate
	String phoneNo
	String email
	String address
	
}
