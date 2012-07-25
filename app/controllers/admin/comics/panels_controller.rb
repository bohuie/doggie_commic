class Admin::Comics::PanelsController < ApplicationController

  def index
    @comic  = Comic.find params[:comic_id]
    @panels = @comic.panels.all
  end

  def show
    @comic  = Comic.find params[:comic_id]
    @panel  = @comic.panels.find params[:id] 
  end

  def new
    @comic  = Comic.find params[:comic_id]
    @panel  = @comic.panels.build
  end

  def edit
    @comic  = Comic.find params[:comic_id]
    @panel  = @comic.panels.find params[:id] 
  end

  def create
    @comic  = Comic.find params[:comic_id]
    @panel  = @comic.panels.new params[:panel] 

    if @panel.save
      flash[:notice] = 'Panel was successfully created.'
      redirect_to admin_comic_path( @comic )
    else
      render 'new'
    end
  end

  def update
    @comic  = Comic.find params[:comic_id]
    @panel  = @comic.panels.find params[:id] 

    if @panel.update_attributes params[:panel] 
      flash[:notice] = 'Panel was successfully updated.'
      redirect_to admin_comic_path( @comic )
    else
      flash[:error] = @panel.errors.full_messages.to_sentence 
      render 'edit'
    end
  end

  def destroy
    @comic  = Comic.find params[:comic_id]
    @panel  = @comic.panels.find params[:id] 
    @panel.destroy

    flash[:notice] = 'Panel was successfully deleted.'
    redirect_to admin_comic_path( @comic )
  end
end
