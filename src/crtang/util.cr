module Crtang
  extend self

  def time
    start = Time.now.ticks
    ret = yield
    elapsed = Time::Span.new(Time.now.ticks - start).total_milliseconds
    puts "Elapsed time: #{elapsed} msecs"

    [ret, elapsed]
  end

end
