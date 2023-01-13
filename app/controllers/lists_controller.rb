class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to list_path(list.id)
    # 投稿機能から詳細画面へリダイレクト
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end
  
private

  def list_params
  params.require(:list).permit(:title, :body)
  end
end
