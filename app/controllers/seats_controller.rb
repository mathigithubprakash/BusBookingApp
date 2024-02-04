class SeatsController < ApplicationController
    def index
        @bus = Bus.find(params[:bus_id])
        @seats = @bus.seats
      end
    
      def new
        @bus = Bus.find(params[:bus_id])
        @seat = Seat.new
      end
    
      def create
        @bus = Bus.find(params[:bus_id])
        @seat = Seat.new(seat_params.merge(bus: @bus))
    
        if @seat.save
          redirect_to bus_seats_path(@bus), notice: 'Seat booked successfully!'
        else
          render :new
        end
      end
    
      private
    
      def seat_params
        params.require(:seat).permit(:number, :status)
      end
end
