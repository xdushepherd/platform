module InstrumentsHelper
	def action_picker(action_name)
	   if action_name == "new"
		Rails.application.routes.url_helpers.admin_instruments_path
	   else
        Rails.application.routes.url_helpers.admin_instrument_path
	   end
	end
	def method_picker(action_name)
	   if action_name == "new"
		"post"
	   else
        "put"
	   end
	end
end
