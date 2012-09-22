class ApplicationController < ActionController::Base
  protect_from_forgery

   before_filter :initialize_nav
  private
  def initialize_nav
     if Category.all
     @categories=Category.all
    else
     @categories=['semi','whell']
    end
  end
end
