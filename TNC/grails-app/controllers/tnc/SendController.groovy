package tnc

class SendController {

    def index() { }
	
	def send = {
		sendMail {
			to = "cpu_kaitong_15@hotmail.com"
			from = "cpukaitong15@gmail.com"
			subject = "Hello from grails-mail."
			body = "Thank you for using grails-mail."
		}
		//render "Email send!"
	}
}
