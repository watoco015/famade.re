class ArtsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_art, only: [:show, :edit, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def index
    @arts = Art.all.order("created_at DESC")
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

  def show
    @comment = Comment.new
    @comments = @art.comments.includes(:user)
  end

  def destroy
    @art.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    art = Art.find(params[:id])
    art.update(art_params)
    redirect_to art_path(art.id)
  end

  private
  def art_params
    params.require(:art).permit(:title, :content, :image).merge(user_id: current_user.id)
  end

  def set_art
    @art = Art.find(params[:id])
  end

  def authorize_user!
    unless @art.user == current_user
      redirect_to root_path
    end
  end
end
