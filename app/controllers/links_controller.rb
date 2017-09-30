class LinksController < ApplicationController
  def show
    @link = Link.find(params[:id])
    @link.last_viewed = Time.now
    @link.save
  end

  def create
    Link.create(:upload_id => link_params)
    redirect_to uploads_path
  end

  private

  def link_params
    params.require(:upload_id)
  end
end
