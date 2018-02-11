class YoutubeService
  BASE_URL = 'https://www.googleapis.com/youtube/v3'
  API_KEY = ENV['YOUTUBE_API_KEY']

  def get_channel(options:)
    options_with_part = options.merge({ part: 'snippet,contentDetails,statistics' })
    HTTParty.get("#{BASE_URL}/channels", { query: options_with_part }).parsed_response
  end
end