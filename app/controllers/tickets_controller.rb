class TicketsController < ApplicationController
    before_action :set_ticket, only: [ :show]
    def index
        @bus = Bus.find(params[:bus_id])
        @ticketss = @bus.tickets
      end
      def show
        @bus = Bus.find(params[:bus_id])
        @tickets = @bus.tickets
      end
    
      def new
        @bus = Bus.find(params[:bus_id])
        @ticket = Ticket.new
      end
    
      def create
        @bus = Bus.find(params[:bus_id])
        @ticket = Ticket.new(ticket_params.merge(bus: @bus))
    
        if @ticket.save
          redirect_to bus_tickets_path(@bus), notice: 'Tickets booked successfully!'
        else
          render :new
        end
      end
    
      private
      def set_ticket
        @ticket = Ticket.where(source: params[:source], destination: params[:destination]).first
      end
    
      def ticket_params
        params.require(:ticket).permit(:number, :status)
      end
end
