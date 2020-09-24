class ItemsController < ApplicationController
  def index
    # @items = Item.all
     @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end
  def show
    @item = Item.find(params[:id])
    @comment = Comment.new
    @comments = @item.comments
  end
  def search
    @items = Item.search(params[:keyword])
  end
  private

  def item_params
    params.require(:item).permit(:image,:name,:title,:genre_id,:text)
  end
end
