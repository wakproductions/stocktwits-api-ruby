require 'net/http'
require 'openssl'
require 'httparty'
require 'stocktwits_api/exception'

module StockTwits
  module Streams
    USER_STREAM_URL="https://api.stocktwits.com/api/2/streams/user/%{id}.json"

    # +get_user_stream+ retrieves the last 30 twits of the given user.
    # * since:	Returns results with an ID greater than (more recent than) the specified ID.
    # * max:	Returns results with an ID less than (older than) or equal to the specified ID.
    # * limit:	Default and max limit is 30. This limit must be a number under 30.
    # * callback:	Define your own callback function name, add this parameter as the value.
    # * filter:	Filter messages by links, charts, or videos. (Optional)
    def get_user_stream(user_id, params={})
      uri = URI.parse USER_STREAM_URL % { id: user_id }
      uri.query = URI.encode_www_form(params)

      response = HTTParty.get(uri, verify: false, timeout: 20)
      if response.code != 200
        raise StockTwitsError, "HTTP response #{response.code}: #{response.body}"
      end

      JSON.parse response.body
    end

  end
end