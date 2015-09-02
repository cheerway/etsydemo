class Dashboard::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :do_yooo
  def do_yooo
    @yooo = "at_dashboard"
  end
 
end
