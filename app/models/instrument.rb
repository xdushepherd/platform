class Instrument < ActiveRecord::Base
	has_many :schedules, as: :markable
	has_many :reservations
	accepts_nested_attributes_for :schedules

	validates :name,presence: true
	validates :unit_belongs_to,presence: true
end
