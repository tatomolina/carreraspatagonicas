class Race < ActiveRecord::Base

  def done?
    due_date > Date.today
  end

end
