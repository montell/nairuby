class HomeController < ApplicationController
  def index
  end
  
  def calendar
  end

  def members
  	@arr_users = []
  	@users = User.find(:all, :order => "name ASC")
  	@users.each do |user|
  		@arr_users << user.id
  	end

  	@members = @arr_users.count


  	@rows = @members/4
  	@rem_rows = @members%4
  end

  def send_notifications
    if params[:subject].blank? and !params[:message].blank?
      flash[:alert] = "Subject is required"
      redirect_to admin_send_emails_path 
    elsif params[:message].blank? and !params[:subject].blank?
      flash[:alert] = "Message is required"
      redirect_to admin_send_emails_path
    elsif !params[:subject].blank? and !params[:message].blank?
      User.where(:email_subscription => true).each do |user|
        UserMailer.notification(user, params[:subject], params[:message].html_safe).deliver
      end
      flash[:notice] = "Email successfully sent"
      redirect_to admin_send_emails_path
    end
  end
end
