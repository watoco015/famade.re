class ArtsController < ApplicationController
  def index
    @arts = Arts.all
  end
end
