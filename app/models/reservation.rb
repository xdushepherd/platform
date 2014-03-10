class Reservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :instrument
    has_one :timetable
	accepts_nested_attributes_for :timetable
	before_save :calculate_price


	private
	  def calculate_price
	  	
	  end
end
