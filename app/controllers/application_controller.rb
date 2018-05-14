class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  ##여기서 부터는 devise gem관련된 action만 처리
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #다른 모든 컨트롤러에서 pubs_helper를 사용할 수 있다.
  include PubsHelper
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
