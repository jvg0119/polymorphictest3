module ApplicationHelper

  def flash_class(type)
  		case type
  			when "success" then "alert alert-success"
  			when "info" then "alert alert-info"
  			when "notice" then "alert alert-info"
  			when "warning" then "alert alert-warning"
  			when "danger" then "alert alert-danger"
  			when "error" then "alert alert-danger"
  		end
  	end

end
