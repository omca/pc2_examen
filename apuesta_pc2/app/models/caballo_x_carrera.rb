class CaballoXCarrera < ActiveRecord::Base
	belongs_to :caballo
	belongs_to :carrera
end
