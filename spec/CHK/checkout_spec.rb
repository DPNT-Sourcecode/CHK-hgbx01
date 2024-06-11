require_solution 'CHK'

describe Checkout do
  let(:skus) { [""] }
  it "checkout" do
    expect(Checkout.new.checkout(skus)).to eq -1
  end
end