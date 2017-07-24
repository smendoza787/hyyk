class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
     @user = User.from_omniauth(request.env["omniauth.auth"])
     sign_in_and_redirect edit_user_path
  end
end
