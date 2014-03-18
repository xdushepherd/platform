class Instrument < ActiveRecord::Base
	has_one  :schedule, as: :markable
	has_many :timetables,through: :schedules
	has_many :reservations
	belongs_to :unit
	accepts_nested_attributes_for :schedules


	validates :name,presence: true
end
