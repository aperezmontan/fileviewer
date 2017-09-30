class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def create
    Upload.create(name: create_name)
    redirect_to :index
  end

  private

  def create_name
    name = Faker::Superhero.name

    loop do
      break if !Upload.all.pluck(:name).include?(name)
      name = Faker::Superhero.name
    end

    name
  end
end
