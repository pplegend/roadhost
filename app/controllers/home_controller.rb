class HomeController < ApplicationController
  def index
   if @news=News.find(:all, :order=>"id desc", :limit=>5)
      @news
    else
      @news=nil
   end
  end

end
