class Schedule < ActiveRecord::Base
	belongs_to :markable ,polymorphic: true
	has_many :timetables
    
end
