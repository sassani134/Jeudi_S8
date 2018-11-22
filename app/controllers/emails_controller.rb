class EmailsController < ApplicationController
 before_action :all_emails, only: [:index, :destroy]
    before_action :set_emails, only: [:destroy, :show]
    respond_to? :html, :js

 def index
   @emails = Email.all
 end

 def show
   @email = Email.find(params[:id])
   @email.read = true
   @email.save

end

 def destroy
    @email.destroy
    respond_to do |format|
      format.html { redirect_to emails_url, notice: 'Email was successfully destroyed.' }
      format.json { head :no_content }
      format.js {render :layout => true}
    end
  end

private
 def all_emails
   @email = Email.all
 end

 def set_emails
   @email = Email.find(params[:id])
 end
end