class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :admin_layout
  protect_from_forgery with: :exception
  include SessionsHelper
  include UsersHelper

  private
    def admin_layout
        self.class.layout  "admin" if current_user && admin?(current_user)
    end
end
