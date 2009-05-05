require File.join(File.dirname(__FILE__), "spec_helper")

describe NaturallySortedPathname, "#<=>(other)" do
  describe "when one path is /tmp/11.png and other is /tmp/2.png" do
    before :all do
      @one = NaturallySortedPathname.new("/tmp/11.png")
      @two = NaturallySortedPathname.new("/tmp/2.png")

      @result = (@one <=> @two)
    end

    it "returns 1" do
      @result.should == 1
    end
  end
end

describe NaturallySortedPathname, "#<=>(other)" do
  describe "when one path is /tmp/1.png and other is /tmp/2.png" do
    before :all do
      @one = NaturallySortedPathname.new("/tmp/1.png")
      @two = NaturallySortedPathname.new("/tmp/2.png")

      @result = (@one <=> @two)
    end

    it "returns -1" do
      @result.should == -1
    end
  end
end


describe NaturallySortedPathname, "#<=>(other)" do
  describe "when one path is /tmp/page_1.png and other is /tmp/_page2.png" do
    before :all do
      @one = NaturallySortedPathname.new("/tmp/1.png")
      @two = NaturallySortedPathname.new("/tmp/2.png")

      @result = (@one <=> @two)
    end

    it "returns -1" do
      @result.should == -1
    end
  end
end


describe NaturallySortedPathname, "#<=>(other)" do
  describe "when one path is /tmp/page_01.png and other is /tmp/_page02.png" do
    before :all do
      @one = NaturallySortedPathname.new("/tmp/01.png")
      @two = NaturallySortedPathname.new("/tmp/02.png")

      @result = (@one <=> @two)
    end

    it "returns -1" do
      @result.should == -1
    end
  end
end


describe NaturallySortedPathname, "#<=>(other)" do
  describe "when one path is /tmp/page_01.png and other is /tmp/page_01.png" do
    before :all do
      @one = NaturallySortedPathname.new("/tmp/page_01.png")
      @two = NaturallySortedPathname.new("/tmp/page_01.png")

      @result = (@one <=> @two)
    end

    it "returns 0" do
      @result.should == 0
    end
  end
end



describe NaturallySortedPathname, "#<=>(other)" do
  describe "when one path is /tmp/page_06.png and other is /tmp/_page06.png" do
    before :all do
      @one = NaturallySortedPathname.new("/tmp/page_06.png")
      @two = NaturallySortedPathname.new("/tmp/page_06.png")

      @result = (@one <=> @two)
    end

    it "returns 0" do
      @result.should == 0
    end
  end
end



describe NaturallySortedPathname, "#<=>(other)" do
  describe "when one path is /tmp/page_06.png and other is /tmp/_page16.png" do
    before :all do
      @one = NaturallySortedPathname.new("/tmp/page_06.png")
      @two = NaturallySortedPathname.new("/tmp/page_16.png")

      @result = (@one <=> @two)
    end

    it "returns -1" do
      @result.should == -1
    end
  end
end



describe NaturallySortedPathname, "#<=>(other)" do
  describe "when one path is /tmp/page_22.png and other is /tmp/_page16.png" do
    before :all do
      @one = NaturallySortedPathname.new("/tmp/page_22.png")
      @two = NaturallySortedPathname.new("/tmp/page_16.png")

      @result = (@one <=> @two)
    end

    it "returns 1" do
      @result.should == 1
    end
  end
end
