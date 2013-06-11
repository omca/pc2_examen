class Caballo < ActiveRecord::Base
	has_many :caballo_x_carreras
	has_many :apuesta_details
end


