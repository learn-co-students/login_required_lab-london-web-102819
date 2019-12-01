class SessionsController < ApplicationController

    def new

    end

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to '/'
        else
            flash[:notice] = "Sorry, please try again. We appreciate your patience."
            redirect_to new_session_path
        end 
    end 

    def destroy
        session.destroy 
    end
end
