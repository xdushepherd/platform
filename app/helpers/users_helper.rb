module UsersHelper
	def admin?(user)
		user.has_role? :admin
	end
end
