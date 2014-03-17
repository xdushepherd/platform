class Schedule < ActiveRecord::Base
	belongs_to :markable ,polymorphic: true
end
