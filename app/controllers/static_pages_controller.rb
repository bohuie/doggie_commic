class StaticPagesController < ApplicationController
  def home
  end

  def archive
    @comics = Comic.all( :order => 'order_id desc' )
  end

  def about
  end

  def contact
  end
end
