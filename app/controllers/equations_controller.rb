class EquationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
  end

  def create
    answer = Services::Requests::Equation.call(params)
    respond_to do |format|
      format.html {
        flash.now[:notice] = "#{answer}"
        render :new
      }
    end
  end
end
