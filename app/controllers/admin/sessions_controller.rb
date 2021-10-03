class Admin::SessionsController < ::Devise::SessionsController
  layout 'admin_application'

  protected

  def after_sign_in_path_for(resource)
    '/admin/dashboard'
  end
end