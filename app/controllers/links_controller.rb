class LinksController < ApplicationController
  def show
    @link = Link.find(params[:id])
  end

  private

  def link_params
    params.require(:id)
  end
end
