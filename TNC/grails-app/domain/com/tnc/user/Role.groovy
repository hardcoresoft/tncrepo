package com.tnc.user

class Role {

    static constraints = {

		roleName (nullable:false, unique:true, size:1..50)
		
    }
	
	
	String roleName
	Boolean active
	
}
