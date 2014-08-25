package com.tnc.user

import com.tnc.mgt.Branch

class User {

    static constraints = {
		
		username (unique:true, nullable: false, size: 1..50)
		password (password:true, nullable: false)
		
		
    }
	
	
	Branch branch
	
	String username
	String password
	Date birthDate
	Date hireDate
	
	
	
	
}
