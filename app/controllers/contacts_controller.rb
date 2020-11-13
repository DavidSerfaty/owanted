
class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Votre demande à bien été prise en compte"
      redirect_to root_path
    else
      flash.now[:notice] = "Votre demande n'a pas été prise en compte"
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
