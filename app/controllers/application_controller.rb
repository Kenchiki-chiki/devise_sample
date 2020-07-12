class ApplicationController < ActionController::Base
  # devise_controllerが実行されたら:configure_permitted_parametersが実行される
  before_action :configure_permitted_parameters, if: :devise_controller?

  # sign_upしたときにkeyとしてnicknameが登録できる
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end









end
