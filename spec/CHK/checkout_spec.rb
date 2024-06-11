require_solution 'CHK'

describe Checkout do
  context 'When the SKUs list is empty'
    let(:skus) { "" }
    it "Return the correct value" do
      expect(Checkout.new.checkout(skus)).to eq 0
    end
  end
end