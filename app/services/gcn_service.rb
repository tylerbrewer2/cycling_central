class GCNService
  USERNAME = 'globalcyclingnetwork'

  def self.perform
    YoutubeService.new.get_channel(
      options: {
        forUsername: USERNAME
      }
    )
  end
end