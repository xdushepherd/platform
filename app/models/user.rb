class User < ActiveRecord::Base
   def self.experts
   	  where(:expert,1)
   end
end
