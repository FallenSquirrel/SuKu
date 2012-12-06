module ApplicationHelper
  
  def highlight_menu_link(menu_link_id)
    content_tag(:div, :class => "highlight_menu_link") do
      concat menu_link_id
    end
  end
  
  def major_block(title, date=nil, &block)
    content_tag(:div, :class => "block_wrapper") do
      concat major_block_headline(title, date)
      concat capture(&block)
    end
  end
  
  def major_block_headline(title, date=nil)
    content_tag(:div, :class => "block_headline") do
      concat(content_tag(:span, :class => "block_title") do
        concat title
      end)
      if date then
        concat(content_tag(:span, :class => "block_date") do
          concat date
        end)
      end
      concat(content_tag(:div, :class => "float_clear") do
      end)
    end
  end
end
