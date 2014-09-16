class Api::V1::ReasonsController < ApplicationController
  respond_to :json

  def index
    respond_with Reason.all
  end

  def show
    respond_with reason
  end

  def create
    respond_with :api, :v1, Reason.create(reason_params)
  end

  def update
    respond_with reason.update(reason_params)
  end

  def destroy
    respond with reason.destroy
  end

  private
  def reason
    Reason.find(params[:id])
  end

  def reason_params
    params.require(:reason).permit(:text)
  end
end
