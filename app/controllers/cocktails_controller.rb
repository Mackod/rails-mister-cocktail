class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show]

  mount_uploader :photo, PhotoUploader

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(user_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  private

  def user_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
