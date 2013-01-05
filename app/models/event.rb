class Event < ActiveRecord::Base
  validates_presence_of :name, :description
  
  # If this event will be displayed on the front page
  def isUpToDate?
    if published then
      if (eventdate >= Date.current - EVENT_DAYS_PASSED_BEFORE_ARCHIVE) || (sticky) then
        return true
      end
    end
    return false
  end
  
  # If this event will be displayed in the archive
  def isOld?
    if published then
      return !isUpToDate?
    end
    return false
  end
  
  # If this event is not yet published
  def isUnpublished?
    return !published
  end
end
