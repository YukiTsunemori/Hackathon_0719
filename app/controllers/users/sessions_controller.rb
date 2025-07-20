# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
 before_action :configure_sign_in_params, only: [:create]
  # DELETE /resource/sign_out
  def destroy
    sign_out(current_user)
    reset_session
    redirect_to root_path, notice: 'ログアウトしました'
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end

  def after_sign_in_path_for(resource)
    posts_index_path
  end

end
