require_solution 'HLO'

describe Hello do
    it "Say hello" do
      let(:friend_name) {"Jane Doe"}
      expect(Hello.new.hello(friend_name)).to eq "hello world"
    end
  end