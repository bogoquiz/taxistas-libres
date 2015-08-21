class ApplicationController < ActionController::Base
  include ActionController::Serialization
  include Mobylette::RespondToMobileRequests
end
