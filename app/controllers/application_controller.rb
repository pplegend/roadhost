class ApplicationController < ActionController::Base
  protect_from_forgery

   before_filter :initialize_nav
  private
  def initialize_nav
     if @categories=Category.all
        @categories
    else
     @categories=nil
    end
  end
end
