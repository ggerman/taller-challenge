class Api::VisitorsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    visitor = Visitor.create!(
      lat: params[:lat],
      lon: params[:lon],
      ip: request.remote_ip,
      user_agent: request.user_agent
    )

    render json: { status: "ok", id: visitor.id }
  end

end
