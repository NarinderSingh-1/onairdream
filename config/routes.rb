Rails.application.routes.draw do
  root 'home#index'

  post "/travel_enquiry" => "home#travel_enquiry", :as => :travel_enquiry
  get "/contact_us" => "home#contact_us", :as => :contact_us
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
