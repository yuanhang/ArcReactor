require 'crack'

describe UniqueChecker do
  describe "#check_uniq" do

    def assert_uniq expect, s
      actual = UniqueChecker.check_uniq s
      expect(actual).to eq(expect)
    end

    it "returns true when characters are unique" do
      assert_uniq true, "abcde"
    end

    it "returns false when the characters are not unique" do 
      assert_uniq false, "aabb"
    end

    it "returns true when string is empty" do
      assert_uniq true, ""
    end

    it "returns false when string is nil" do
      assert_uniq false, nil 
    end
  end
end
