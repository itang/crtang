module Crtang
  extend self

  def time 
    start = Time.now.ticks
    ret = yield
    elapsed = (Time.now.ticks - start) / 1000_000.0
    puts "Elapsed time: #{elapsed} msecs"

    [ret, elapsed]
  end

end
