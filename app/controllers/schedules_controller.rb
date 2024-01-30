class SchedulesController < ApplicationController
    def search
        @source = params[:source]
        @destination = params[:destination]
    
        @schedules = Schedule.by_source_and_destination(@source, @destination)
        @additional_schedules =     .joins(:route)
                                     .where("LOWER(routes.source) = ? AND LOWER(routes.destination) = ?", @source.downcase, @destination.downcase)

                                     @all_schedules = @schedules + @additional_schedules
      end
end
