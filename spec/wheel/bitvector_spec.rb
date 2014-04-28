require 'wheel'

describe BitVector do
  it "initialize" do 
    bv = BitVector.new 100
    expect(bv.length).to eq(100)
  end

  it "defautl set to all 0" do
    bv = BitVector.new 10
    10.times do |i|
      expect(bv[i]).to eq(0)
    end
  end

  it "insert is set specific positon in bitvector to 1" do
    bv = BitVector.new 10
    bv.insert 3
    expect(bv[3]).to eq(1)
    expect(bv[2]).to eq(0)
    expect(bv[4]).to eq(0)
  end

  it "remove is set specific positon in bitvector to 0" do
    bv = BitVector.new 10
    bv.insert 2
    bv.insert 3
    bv.insert 4
    bv.remove 3
    expect(bv[3]).to eq(0)
    expect(bv[2]).to eq(1)
    expect(bv[4]).to eq(1)
  end
end
