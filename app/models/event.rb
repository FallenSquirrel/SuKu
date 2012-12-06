class Event < ActiveRecord::Base
  
  # If this event will be displayed on the front page
  def visibleOnFrontPage?
    if published then
      if (eventdate >= Date.current - EVENT_DAYS_PASSED_BEFORE_ARCHIVE) || (sticky) then
        return true
      end
    end
    return false
  end
  
  # If this event will be displayed in the archive
  def visibleInArchive?
    if published then
      return !visibleOnFrontPage?
    end
    return false
  end
end
