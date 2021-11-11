class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = List.all
  end

  def show; end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params_list)
    if @list.save
      redirect_to @list, notice: 'list was successfully created.'
    else
      render :new
    end
  end


  # Private methods
  private

  def set_list
    @list = List.find(params[:id])
  end

  def params_list
    params.require(:list).permit(:name)
  end
end
