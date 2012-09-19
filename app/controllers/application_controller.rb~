class ApplicationController < ActionController::Base
  protect_from_forgery

   before_filter :initialize_nav
 
  private
  def initialize_nav
     @categories=Category.all
  end
end
