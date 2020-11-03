class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.create(params.require(:signup).permit(:camper_id, :activity_id, :time))
        redirect_to camper_path(Camper.find(@signup.camper_id))
    end
end
