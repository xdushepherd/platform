class Instrument < ActiveRecord::Base
	has_one :timetable
	has_many :reservations
	accepts_nested_attributes_for :timetable
end
