class Admin::ComicsController < AdminController
  def index
    @comics = Comic.all( :order => 'order_id' )
  end

  def show
    @comic = Comic.find params[:id] 
  end

  def new
    @comic = Comic.new
  end

  def edit
    @comic = Comic.find params[:id] 
  end

  def create
    @comic = Comic.new params[:comic] 

    if @comic.save
      flash[:notice] = 'Comic was successfully created.'
      redirect_to [:admin, @comic]
    else
      render 'new'
    end
  end

  def update
    @comic = Comic.find params[:id] 

    if @comic.update_attributes(params[:comic])
      flash[:notice] = 'Comic was successfully updated.'
      redirect_to [:admin, @comic]
    else
      flash[:notice] = @comic.errors.full_messages.to_sentence 
      render 'edit'
    end
  end

  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    flash[:notice] = 'Comic was successfully deleted.'
    redirect_to admin_comics_path 
  end
end

