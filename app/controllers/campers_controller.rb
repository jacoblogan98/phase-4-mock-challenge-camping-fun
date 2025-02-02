class CampersController < ApplicationController

    def index
        campers = Camper.all 
        render json: campers
    end

    def show
        camper = find_camper
        render json: camper, serializer: CamperShowSerializer
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private

    def find_camper
        Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name, :age)
    end
end
