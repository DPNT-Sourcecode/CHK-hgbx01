require_solution 'SUM'

describe Sum do
    let(:first_integer) { 2 }
    let(:second_integer) { 100 }
    it "Sum two integers" do
      expect(Sum.new.sum).to eq 102
    end
  end
