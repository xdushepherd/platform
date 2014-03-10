class Timetable < ActiveRecord::Base
	belongs_to :instrument
	belongs_to :reservation
end
