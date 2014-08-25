package com.tnc.mgt

import java.util.Date;

class ShowtimeSeat {


	static mapping = {
	}

	static constraints = {
		showtimeSeatRow			blank:false, nullable: false, min: 1
		showtimeSeatColumn		blank:false, nullable: false, min: 1
		showtimeSeatPrice		blank:false, nullable: false, min: 0.00
	}

	Integer showtimeSeatRow
	Integer showtimeSeatColumn
	BigDecimal showtimeSeatPrice
	Boolean reservedStatus

	Date dateCreated
	Date lastUpdated

	static belongsTo = [showtime:Showtime]
}
