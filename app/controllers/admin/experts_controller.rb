class Admin::ExpertsController < Admin::ApplicationController
  
  def index
    @q = User.experts.search(params[:q])
    @experts = @q.result(distinct: true) 
  end
end
