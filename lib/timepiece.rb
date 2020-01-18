class TimePiece

  attr_reader :user_birthday

  def self.create(day, month)
    @timepiece = TimePiece.new(day, month)
  end
    
  def self.instance
    @timepiece
  end

  def initialize(day, month)
    @todays_date = Time.new.yday
    @user_birthday = Time.new(0 ,month, day).yday
  end

  def today?
    @user_birthday == @todays_date
  end

  def countdown
    @user_birthday > @todays_date ? (@user_birthday - @todays_date) : 366 - (@todays_date - @user_birthday)
  end


end