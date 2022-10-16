class ApplicationController < ActionController::Base
  before_action :set_q

  def set_q
    @q = Recipe.ransack(params[:q])
  end
end
