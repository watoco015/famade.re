class ArtsController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @arts = Art.all
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.create(art_params)
    if @art.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def art_params
    params.require(:art).permit(:title, :content, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
