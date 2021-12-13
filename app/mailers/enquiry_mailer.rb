class EnquiryMailer < ApplicationMailer

  def travel_enquiry_email
    @trip_details = params[:trip_detail]
    mail(to: "caretrip57@gmail.com", subject: "Customer Inquiry Detail")
  end
end
