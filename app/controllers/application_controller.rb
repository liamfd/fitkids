class ApplicationController < ActionController::Base
  protect_from_forgery

  helper :all
  helper_method :choose_log_in
end
