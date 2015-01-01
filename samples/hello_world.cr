require "../src/crtang"

include Crtang

#if __FILE__ == $0
  ret = time do 
    puts "Happy new Year! 2015"
    2015
  end

  puts "Hello #{ret}"
#end
