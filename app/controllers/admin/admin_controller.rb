class Admin::AdminController < ApplicationController
  layout 'admin_application'

  def dashboard
    redirect_to new_admin_session_path, status: 401 unless current_admin
  end
end