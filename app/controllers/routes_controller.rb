class RoutesController < ApplicationController
    def find_buses
      @source = params[:source]
      @destination = params[:destination]
      @route = Route.by_source_and_destination(@source, @destination).first
  
      if @route
        redirect_to srm_buses_path, notice: 'Buses found!'
      else
        flash.now[:alert] = 'No buses found for the given route.'
        render 'search'
      end
    end
  end
  