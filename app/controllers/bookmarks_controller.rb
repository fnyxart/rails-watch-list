class BookmarksController < ApplicationController
  before_action :set_list_for_bookmark, only: [:new, :create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

   # Private methods
  private

  def set_list_for_bookmark
    @list = List.find(params[:list_id])
  end

  def params_bookmark
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
