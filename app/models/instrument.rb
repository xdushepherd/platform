class Instrument < ActiveRecord::Base
	has_one :timetable
	has_many :reservations
	accepts_nested_attributes_for :timetable

	validates :name,presence: true
	validates :unit_belongs_to,presence: true
end
