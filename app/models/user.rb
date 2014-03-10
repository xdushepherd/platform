class User < ActiveRecord::Base
   has_many  :reservations
   def self.experts
   	  where(if_expert: 1)
   end
end
