class Reservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :instrument
    has_many :schedules, as: :markable
	accepts_nested_attributes_for :schedules
end
