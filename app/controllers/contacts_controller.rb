class ContactsController < ApplicationController
  def show
   respond_to do |format|
      format.html # new.html.erb
  
    end
  end

  
  def create
    @contact = Contact.new(params[:contact])
    
    respond_to do |format|
      if  @contact.save!
        format.html { redirect_to  root_path, :notice => 'Your information has been sent, we will reply you soon' }
      else
        format.html { render :action => "new" }
      end
    end
  end 

  def new
      @contact=Contact.new
      respond_to do |format|
      format.html # new.html.erb
    end
  end
end
