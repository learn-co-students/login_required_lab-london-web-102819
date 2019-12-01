class SecretsController < ApplicationController
    before_action :login_valid
    def show

    end 
    

    private 
    def login_valid
        unless session[:name] && !session[:name].empty?
            redirect_to new_session_path
        end 
    end 
end
