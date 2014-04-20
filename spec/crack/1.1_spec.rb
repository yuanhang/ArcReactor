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

    context "when input is not a stirng" do
      it "returns false when input is a fixnum" do
        assert_uniq false, 5 
      end

      it "returns false when input is a float" do
        assert_uniq false, 5.0
      end

      it "returns false when input is a array" do
        assert_uniq false, [] 
      end

      it "returns false when input is a hash" do
        assert_uniq false, {} 
      end
    end

    context "when input string contains non alphabet char" do
      it "returns false when input has same non-alphabet char" do
        assert_uniq false, "^abc^%" 
      end

      it "returns true when input has no same char" do
        assert_uniq true, 'abc!@#$%^&*()_+{}|:"<>?1234567890-=[]\;,./' 
      end
    end
  end
end
