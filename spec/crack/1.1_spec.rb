require 'crack'

describe UniqueChecker do
  describe "#check_uniq" do
    context "unique character string" do
      it "returns true when characters are unique" do
        str = "abcde"
        actual = UniqueChecker.check_uniq str
        expect(actual).to eq(true)
      end
    end
  end
end
