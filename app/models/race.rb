class Race
  attr_accessor :date

  def done?
    date > Date.today
  end

end
