class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tags = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def edit
  end

  def create
    @tag =  Tag.new(params[:tag])
    if @tag.save 
      flash[:notice] = "Poprawnie dodano tag"
      redirect_to tags_path
    else
      flash[:notice] = "Nie udalo sie dodac taga."
      redirect_to tags_path
  end
  end

  def delete
  end
end
