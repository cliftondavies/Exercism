# A class that accepts digits entered on a microwave panel
# and converts them to their proper display panel timer equivalent.
class Microwave
  def initialize(digits)
    @time = digits.to_s
    @minutes = 0
    @seconds = 0
  end

  def timer
    if @time.to_i < 100
      convert_to_timer_equivalent(@time.to_i)
    elsif @time.to_i < 1000
      @minutes += @time[0].to_i
      convert_to_timer_equivalent(@time[1, 2].to_i)
    else
      @minutes += @time[0, 2].to_i
      convert_to_timer_equivalent(@time[2, 2].to_i)
    end
  end

  private

  def convert_to_timer_equivalent(time)
    if time < 60
      @seconds += time
    else
      @seconds += time - 60
      @minutes += 1
    end
    @seconds = "0#{@seconds}" if @seconds < 10
    @minutes = "0#{@minutes}" if @minutes < 10
    "#{@minutes}:#{@seconds}"
  end
end
