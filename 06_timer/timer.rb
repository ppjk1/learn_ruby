class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    left = @seconds
    units = []

    while left > 0
      write = left % 60
      left = left/60
      units.unshift(write.to_s.rjust(2, "0"))
    end

    while units.length < 3
      units.unshift("00")
    end

    units.join(":")
  end

end
