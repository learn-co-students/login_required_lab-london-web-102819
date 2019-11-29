class SecretsController < ApplicationController

    def show
        if session[:name] == "" || session[:name] == nil
            redirect_to new_sessions_path
        end
    end

end
