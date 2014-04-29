require 'crack'

describe Matrix do
  def test input, expected
    actual = Matrix.clear input
    assert actual, expected
  end

  def assert actual, expected
    expect(actual).to eq(expected)
  end

  it "1*1" do
    test [[1]], [[1]]
    test [[0]], [[0]]
  end

  it "2*1" do
    test [[0, 1]], [[0, 0]]
    test [[1, 0]], [[0, 0]]
    test [[0, 0]], [[0, 0]]
    test [[1, 1]], [[1, 1]]
  end
end
