class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    puts "=======>"
    raise request.env["omniauth.auth"].to_yaml
    #user = User.from_omniauth(request.env["omniauth.auth"])
  end
  alias_method :github, :all
end