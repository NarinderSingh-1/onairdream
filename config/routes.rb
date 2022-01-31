Rails.application.routes.draw do
  root 'home#index'

  post "/travel_enquiry" => "home#travel_enquiry", :as => :travel_enquiry
  get "/contact_us" => "home#contact_us", :as => :contact_us
  get "/business_class" => "home#business_class", :as => :business_class
  get "/last_minute" => "home#last_minute", :as => :last_minute
  get "/blogs" => "home#blogs", :as => :blogs
  get "/win_cash" => "home#win_cash", :as => :win_cash
  get "/flights" => "home#flights", :as => :flights
  get "/canada_to_india" => "home#canada_to_india", :as => :canada_to_india
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
