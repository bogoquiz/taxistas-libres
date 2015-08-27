require 'rails_helper'

RSpec.describe "routing to cabdriver", :type => :request do
  it "routes /api/v1/cabdrivers  for all cabdrivers" do
    #expect(:get => "/cabdrivers/").to route_to(
    #  :controller => "cabdrivers",
    #  :action => "index"
    #)
	get '/api/v1/cabdrivers'

	#expect(response.status).to be(200)
	response.should be_success
    #expect(response).to have_http_status(201)
  end

  it "routes /api/v1/cabdrivers to profile#show for specific cabdrivers" do

  	 get '/api/v1/cabdrivers/1'

  	 response.should be_success
   end	

   
   it "routes /api/v1/cabdrivers to profile#show for free cabdrivers" do

  	 get '/api/v1/cabdrivers',  :controller =>  {:occupied => true}

  	 #expect(:get => "/api/v1/cabdrivers?occupied=f").to be_success
  	 
   end	

   it "routes /api/v1/cabdrivers to  for free cabdrivers" do

  	 get '/api/v1/cabdrivers',  :controller =>  {:occupied => true}

  	 response.should be_success
  	 #expect(:get => "/api/v1/cabdrivers?occupied=f").to be_success
  	 
   end	

   #latitude: 4.6657747, longitude: -74.0682264
   it "routes /api/v1/cabdrivers to profile#show for  cabdrivers georeference" do

  	 get '/api/v1/cabdrivers',  :controller =>  {:latitude => 4.6657747 , :longitude => -74.0682264 }

  	 response.should be_success

  	 #expect(:get => "/api/v1/cabdrivers?occupied=f").to be_success
  	 
   end

   

   it "routes /api/v1/cabdrivers to profile#show for  cabdrivers new" do

   	#name: "Blanca Gomez", cell: "3112346798", occupied: false, latitude: 4.6687566, longitude: -74.0550388}

  	post '/api/v1/cabdrivers',  :cabdriver => {:name => "pep landom", 
  											   :cell => 3133567878,
  											   :occupied => true,
  											   :latitude => 4.6657747,
  											   :longitude => -74.0682264 }

  	 response.should be_success
  	 
   end

end  