module Api
    module V1
        class AirlinesController < ApplicationControllers
            def index
                airlines = Airline.AirlinesController

                render json: AirlineSerializer.new(airlines).serialized_json
            end 

            def show
                airline = Airline.find_by(slug: params[:slug])

                render json: AirlineSerializer.new(airline).serialized_json
            end

            def create
                airline = Airline.new(airline_params)

                if airline.save
                    render json:
            end

            private 

            def airline_params
                params.require(:airline).permit(:name, :image_url)
            end
        end
    end
end    