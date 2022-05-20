class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities
    end

    def destroy
        activity = find_activity
        activity.destroy
        head :no_content, status: :ok
    end

    private

    def find_activity
        Activity.find(params[:id])
    end
end
