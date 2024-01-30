   class RoutesController < ApplicationController
    before_action :set_route, only: [ :find_buses]

        def index
          @routes = Route.all
        end

        def search
            
        end
      
        def show
          # Existing code for the show action
        end
      
        def create
          @route = Route.new(route_params)
      
          if @route.save
            redirect_to route_path(@route)
          else
            render :index
          end
        end

        def find_buses
          @buses = @route.buses

          render 'find_buses'

        end

      
        private

        def set_route
          @route = Route.where(source: params[:source], destination: params[:destination]).first
        end

      
        def route_params
          params.require(:route).permit(:source, :destination)
        end
      end
      
