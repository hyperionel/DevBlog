class Admin::SessionsController < ::Devise::SessionsController
  layout 'authentication_layout'

  protected

  def after_sign_in_path(resource)
    binding.pry
  end
end