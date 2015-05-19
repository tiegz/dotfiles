# Rails 
def activate_authlogic
  controller.request = ActionController::TestRequest.new
  Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(controller)
end


class String
  def has_asian_chars?
    !!(self =~ /\p{Han}|\p{Katakana}|\p{Hiragana}|\p{Hangul}/)
  end
end
