class SessionsController < ApplicationController
   
    def new
    end

    def create
        session[:name] = params[:name]
        if session[:name].empty? || session[:name] == nil
            redirect_to new_sessions_path
        else 
            redirect_to '/'
        end 
    end


    def destroy
        session.destroy
    end



end
