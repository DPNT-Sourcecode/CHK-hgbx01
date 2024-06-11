require_solution 'HLO'

describe Hello do
  let(:friend_name) {"Jane Doe"}
  it "Say hello" do
    expect do
      Hello.new.hello(friend_name)
    end.to output("hello world").to_stdout
  end
end