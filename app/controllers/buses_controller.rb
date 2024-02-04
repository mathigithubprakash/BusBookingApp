class BusesController < ApplicationController
    def srm
        @bus = Bus.find_by(name: 'srm')
      end
    
      def srs
        @bus = Bus.find_by(name: 'srs')
      end
end
