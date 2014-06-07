# Rails 
def activate_authlogic
  controller.request = ActionController::TestRequest.new
  Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(controller)
end
