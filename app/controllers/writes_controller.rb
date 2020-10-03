class WritesController < ApplicationController
  def index
    @writes = Write.order('created_at DESC')
  end
  def new
    @write = Write.new
  end

  def create
    @write = Write.new(write_params)
    if @write.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @write = Write.find(params[:id])
  end
  def destroy
    @write =  Write.find(params[:id])
    @write.destroy
    redirect_to action: 'index'
  end

  def edit
    @write =  Write.find(params[:id])
  end

  def update
    @write = Write.find(params[:id])
    if @write.update(write_params)
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  private

  def write_params
    params.require(:write).permit(:image, :name, :text, :twitter, :blog)
  end
end

