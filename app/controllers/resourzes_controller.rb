class ResourzesController < ApplicationController
    
    def index
        @resourzes = Resourze.all
        
    end

    def show
        @resourze = Resourze.find_by_id(params[:id])
        #show address information
    end

    def new

    end

    def create
        @resourze = Resourze.new(:resourze_params)
        if @resourze.save
            redirect_to resourze_path(@resourze)
    end

    def edit
        #restrict access to current_user
    end

    def update

    end

    def destroy
        #restrict to only allow the user to change
    end

    private
    def resourze_params
        params.require(:resourze).permit(:address, :city, :state, :zip_code, :phone_num, :site_url, :non_profit, :name, :user_id)
    end

end