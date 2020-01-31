class AnimalsController < ApplicationController

  def index
    @animals = {"type": "Golden Retriever"}
    json_response(@animals)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
