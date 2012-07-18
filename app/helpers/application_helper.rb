module ApplicationHelper

	def is_active?(page_name)
			"active" if params[:controller] == page_name
	end
	
	def page_title
		"PIC Appalachia | " + controller_name.titleize
	end
	
	def sortable(column, title = nil)
		title ||= column.titleize
		direction = sort_direction == "asc" ? "desc" : "asc"
		link_to title, {:sort => column, :direction => direction}
	end
end