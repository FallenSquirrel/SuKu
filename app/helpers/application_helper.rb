module ApplicationHelper
  
  def highlight_menu_link(menu_link_id)
    content_tag(:div, :class => "highlight_menu_link") do
      concat menu_link_id
    end
  end
end
