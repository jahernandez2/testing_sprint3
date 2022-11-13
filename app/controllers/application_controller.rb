class ApplicationController < ActionController::Base
  # Auth the user before everything...
  before_action :configure_permitted_parameters, if: :devise_controller?


  before_action :authenticate_user!
  protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
          end

end
# @messages = Pivot.where(moderator_id: current_user).all
