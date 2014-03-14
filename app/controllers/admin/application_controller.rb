class Admin::ApplicationController < ApplicationController
  layout 'admin'
  before_action :admin_layout
  protect_from_forgery with: :exception
  include UsersHelper

  private
    # Use callbacks to share common setup or constraints between actions.
    def admin_layout
        self.class.layout  "admin" if current_user && admin?(current_user)
    end
end