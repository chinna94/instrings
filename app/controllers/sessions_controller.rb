require 'ruby-prof'
class SessionsController < ApplicationController
  def create
    begin
      # RubyProf.start
      @user = User.omniauth(request.env['omniauth.auth'].to_hash)
      logger.info "#{request.env['omniauth.auth']}"
      session[:user_id] = @user.id
      flash[:success] = "Welcome, #{@user.name}!"
    rescue
      flash[:warning] = "There was an error while trying to authenticate you..."
    end
    redirect_to root_path
    # result = RubyProf.stop
    # printer = RubyProf::FlatPrinter.new(result)
    # printer.print(STDOUT)
  end

  def destroy
    if current_user_signed_in?
      @current_user = nil
      session[:user_id] = nil
    end
    redirect_to root_path
  end
end
