class GymsController < ApplicationController


    def show
        gym = gym.find(params[:id])
        if gym
            render json: gym
        else
            render json: { error: "No gym found"}
        end
    end

    def destroy
        gym = gym.find(params[:id])
        if gym
            head: no_content
        else
            render json: { error: "Gym not found"}
        end
    end

    def index
        gym = Gym.all
        render json: client
    end
    
    def update
        Gym = Gym.find(params[:id])
        client.update(gym_params)
        render json: gym
    end

    private
    def gym_params
        params.require(:name, :address)
    end



end
