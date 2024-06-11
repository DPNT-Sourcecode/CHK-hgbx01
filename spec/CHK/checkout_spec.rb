require_solution 'CHK'

describe Checkout do
  subject { Checkout.new.checkout(skus) }
  context 'When the SKUs list is empty'
    let(:skus) { "" }
    it "Return the correct value" do
      expect(subject).to eq 0
    end
  end

  context 'When the SKUs list has an invalid character'
    let(:skus) { "ABxD" }
    it "Return the error code" do
      expect(subject).to eq -1
    end
  end

  context 'When the SKUs list has an lowercase character'
    let(:skus) { "AbCD" }
    it "Return the error code" do
      expect(subject).to eq -1
    end
  end

  context 'When the SKUs list is valid'
    context 'and it has only one item'
      let(:skus) { "A" }
      it "Return the correct value" do
        expect(subject).to eq 50
      end
    end

    context 'and it has multple items of the same kind'
      context 'without special offer'
        let(:skus) { "CCC" }
        it "Return the correct value" do
          expect(subject).to eq 50
        end
      end

      context 'with special offer'
        let(:skus) { "BBB" }
        it "Return the correct value" do
          expect(subject).to eq 75
        end
      end
    end

    context 'and it has multple items of different kinds'
      context 'without special offer'
        let(:skus) { "ABCACDDCCDD" }
        it "Return the correct value" do
          expect(subject).to eq 270
        end
      end

      context 'with special offer'
        let(:skus) { "ABCACDADCACDBBD" }
        it "Return the correct value" do
          expect(subject).to eq 395
        end
      end
    end
  end
end