require_solution 'HLO'

describe Hello do
  let(:friend_name) {"Jane Doe"}
  it "Say hello" do
    expect(Hello.new.hello(friend_name)).to eq("Hello, Jane Doe!")
  end
end