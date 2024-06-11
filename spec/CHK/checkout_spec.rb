require_solution 'CHK'

describe Checkout do
  subject { Checkout.new.checkout(skus) }

  context 'When the SKUs list is empty' do
    let(:skus) { "" }
    it "Return the correct value" do
      expect(subject).to eq 0
    end
  end

  context 'When the SKUs list has an invalid character' do
    let(:skus) { "ABxD" }
    it "Return the error code" do
      expect(subject).to eq -1
    end
  end

  context 'When the SKUs list has an lowercase character' do
    let(:skus) { "AbCD" }
    it "Return the error code" do
      expect(subject).to eq -1
    end
  end

  context 'When the SKUs list is valid' do
    context 'and it has only one item' do
      let(:skus) { "A" }
      it "Return the correct value" do
        expect(subject).to eq 50
      end
    end

    context 'and it has multple items of the same kind' do
      context 'without special offer' do
        let(:skus) { "CCC" }
        it "Return the correct value" do
          expect(subject).to eq 60
        end
      end

      context 'with special offer' do
        let(:skus) { "BBB" }
        it "Return the correct value" do
          expect(subject).to eq 75
        end
      end
    end

    context 'and it has multple items of different kinds' do
      context 'without special offer' do
        let(:skus) { "ABCACDDCCDD" }
        it "Return the correct value" do
          expect(subject).to eq 270
        end
      end

      context 'with special offer' do
        let(:skus) { "ABCACDADCACDBBD" }
        it "Return the correct value" do
          expect(subject).to eq 395
        end
      end
    end
  end
end
