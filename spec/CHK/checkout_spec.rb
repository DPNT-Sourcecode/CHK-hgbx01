require_solution 'CHK'

describe Checkout do
  subject { Checkout.new.checkout(skus) }
  context 'When the SKUs list is empty'
    let(:skus) { "" }
    it "Return the correct value" do
      expect(subject).to eq 0
    end
  end

  context 'When the SKUs list has an invalid characters'
    let(:skus) { "a" }
    it "Return the error code" do
      expect(subject).to eq -1
    end
  end
end