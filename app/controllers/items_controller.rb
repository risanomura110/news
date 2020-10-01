class ItemsController < ApplicationController
  def index
    @items = Item.order('created_at DESC')
  end

  def political
    @politicals = Item.where(genre_id: 2).order('created_at DESC')
  end

  def inter
    @inters = Item.where(genre_id: 3).order('created_at DESC')
  end

  def economy
    @economys = Item.where(genre_id: 4).order('created_at DESC')
  end

  def society
    @societys = Item.where(genre_id: 5).order('created_at DESC')
  end

  def media
    @medias = Item.where(genre_id: 6).order('created_at DESC')
  end

  def life
    @lifes = Item.where(genre_id: 7).order('created_at DESC')
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

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to action: 'index'
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :title, :genre_id, :text)
  end
end
