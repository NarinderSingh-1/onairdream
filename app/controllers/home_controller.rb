class HomeController < ApplicationController
	before_action :footer_list
	before_action :countries, only: [:index, :canada_to_india]

	def index
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

	def canada_to_india
		@canada_cities = ['ALBERTA','BRAMPTON','BRANDON','BRITISH COLUMBIA','CALGARY','EDMONTON',
			'REGINA ','SASKATCHEWAN','SASKATOON','ST JOHNS','SYDNEY','TORONTO','QUEBEC','London',
			'NOVA SCOTIA','ONTARIO','OTTAWA','FORT MCMURRAY','GRANDE PRAIRIE','HALIFAX','KELOWNA',
			'MANITOBA','MONTREAL','NEW BRUNSWICK','VICTORIA (BC)','VANCOUVER','WINNIPEG','YUKON',
			'NEWFOUNDLAND AND LABRADOR','PRINCE GEORGE (BC)','THUNDER BAY ONTARIO']
	end

	private

		def footer_list
			@destinations = ['Delhi','Mumbai','Hyderabad','Bangalore','Kolkata','Chennai','Cochin', 'Amritsar']
			@airlines = ['Qatar Airways', 'Etihad Airways', 'British Airways', 'Air India', 'Air Canada', 'United Airline',
			'Singapur Airline', 'Lufthansa']
		end

		def countries
			@source = ["Canada","Italy","Australia","Austria","America","New York",'Atlanta','Chicago','New York',
						'Dallas','Denver', 'Los Angeles','Tempa','San Diego','Charlotte','Las Vegas','Phoenix',
						'Orlando','Seattle','Miami','Houston','Fort Lauderdale','San Francisco','Minneapolis',
						'Detroit','Boston','Salt Lake City','Philadelphia','Baltimore','Nashville','Washington DC',
						'Austin','Portland','St. Louis','San Jose','Oakland','San Antonio','Kansas City',
						'Raleigh Durham','Indiana Polis','Cincinnati','Pittsburgh','Bradley']
		end
end
