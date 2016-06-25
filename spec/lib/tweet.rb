require 'tweet'

describe Tweet do
  it 'must have a status' do
    tweet = Tweet.new(status: "Ahhhhhh")
    expect(tweet).to have_attributes(status: "Ahhhhhh")
  end

end
