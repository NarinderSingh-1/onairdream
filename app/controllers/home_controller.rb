class HomeController < ApplicationController
	before_action :footer_list

	def index
		# @source = [["Canada","Canada"],["Australia","Australia"],["America","America"]]
		@source = ["Canada","Italy","Australia","Austria","America","New York","Canada","Italy","Australia","Austria","America","New York"]
	end

	def travel_enquiry
		begin
			@trip_detail = params[:trip]

			EnquiryMailer.with(trip_detail: @trip_detail).travel_enquiry_email.deliver_now
			flash[:notice] = "Thank you #{@trip_detail[:name]} for your Inquiry! We'll get contact you soon!"
			redirect_to root_path
		rescue => e
			flash[:error] = "Error #{e.message}"
			redirect_to root_path
		end
	end

	def contact_us
	end

	def business_class
	end

	def last_minute
	end

	def blogs
	end

	def win_cash
	end

	def flights
	end

	private

		def footer_list
			@destinations = ['Delhi','Mumbai','Hyderabad','Bangalore','Kolkata','Chennai','Cochin', 'Amritsar']
			@airlines = ['Qatar Airways', 'Etihad Airways', 'British Airways', 'Air India', 'Air Canada', 'United Airline',
			'Singapur Airline', 'Lufthansa']
		end
end
