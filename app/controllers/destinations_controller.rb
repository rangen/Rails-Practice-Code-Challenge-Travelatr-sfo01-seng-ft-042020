class DestinationsController < ApplicationController
    def show
        @dest = Destination.find(params[:id])
    end
end