require "./spec_helper"

CONSTANT_1 = 100

describe "Util" do
  describe "time" do
    it "compute cost time" do
      ret, e = time do
        puts "Hello,World"
        sleep 0.1
        CONSTANT_1
      end
      puts "*" * 100
      puts "ret: #{ret}"

      ret.should_not be_nil
      ret.should eq(CONSTANT_1)
      (e >= 0.1).should be_true
    end

    it "time cost in milliseconds" do
      ret, e = time do
        sleep(1)
      end
      d = e as Float
      puts d
      ( d >= 1000 && d <= 1100 ).should be_true
    end
  end
end
