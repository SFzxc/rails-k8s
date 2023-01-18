class HealthzController < ApplicationController
  def index
    render json: { status: true }
  end
end
