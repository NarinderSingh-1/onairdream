class HomeController < ApplicationController
	def index
	end

	def travel_enquiry
		@trip_detail = params[:trip]

		EnquiryMailer.with(trip_detail: @trip_detail).travel_enquiry_email.deliver_now
		flash[:success] = "Thank you for your order! We'll get contact you soon!"
		redirect_to root_path
	end

end
