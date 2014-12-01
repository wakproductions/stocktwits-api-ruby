require 'spec_helper'

describe StockTwits do

  it 'should download the most recent 30 messages of a user' do
    response = StockTwits.get_user_stream('greenspud')
    expect(response).to be_a Hash
    expect(response.keys).to include("response", "user", "cursor", "messages")
    expect(response['messages'].count).to be 30
  end


end