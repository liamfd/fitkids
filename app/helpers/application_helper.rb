module ApplicationHelper

def sorter(column, title = nil)
  title ||= column.titleize
  css_class = column == sort_column ? "current #{sort_direction}" : nil
  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
end

def choose_log_in
	if user_signed_in?
		if current_user.type == "Child"
			link_to "My Profile", child_profile_users_path(:id => current_user.id)
		elsif current_user.type == "Watcher"
			link_to "My Profile", watcher_profile_users_path(:id => current_user.id) 
		end
	end
end

end
