class Apuestum < ActiveRecord::Base
	belongs_to :tipo_apuestum
	has_many :apuesta_detail
end
