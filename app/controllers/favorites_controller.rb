class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_favorite, only: [:create, :destroy]

  def create
    favorite = current_user.favorites.build(art_id: params[:art_id])
    favorite.save
    redirect_to art_path(@art.id)
  end

  def destroy
    favorite = Favorite.find_by(art_id: params[:art_id], user_id: current_user.id)
    favorite.destroy
    redirect_to art_path(@art.id)
  end

  private

  def set_favorite
    @art = Art.find(params[:art_id])
  end
end
