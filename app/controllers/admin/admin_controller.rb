class Admin::AdminController < ApplicationController
  layout false

  def login
    render layout: 'authentication_layout'
  end

  def dashboard
    redirect_to action: 'login', status: 401 unless current_admin 
  end

  def do_auth
  end
end