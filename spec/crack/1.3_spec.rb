require 'crack'

describe SameComponents do
  describe "#same_components?" do
    def assert expected, s1, s2
      actual = SameComponents.same_components? s1, s2
      expect(actual).to eq(expected)
    end

    context "returns true if string made up with same components" do
      it "same length, same components" do
        assert true, "a", "a"  
      end

      it "same length, same components, contains non-alphabet char" do
        assert true, "a5$@%!", "a!@%$5"  
      end

      it "empty" do
        assert true, "", ""  
      end
    end

    context "returns false if string made up with different components" do
      it "different length" do
        assert false, "ab", "a"  
      end

      it "same length, different component" do
        assert false, "ab", "ac"  
      end

      it "same length, different component, non-alphabet" do
        assert false, "$%^&*()ac", "a$%@&*()c"  
      end

      it "nil" do
        assert false, nil, nil  
      end
    end
  end
end
