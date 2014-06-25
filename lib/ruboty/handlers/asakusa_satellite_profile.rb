require 'rest-client'

module Ruboty
  module Handlers
    class AsakusaSatelliteProfile < Base
      on /change your name to (?<name>.+)/, name: "change_name", description: ""
      on /change your icon to (?<url>.+)/, name: "change_icon", description: ""

      def change_name(message)
        update_profile("name", message[:name])
        message.reply("done")
      end

      def change_icon(message)
        update_profile("profile_image_url", message[:url])
        message.reply("done")
      end

      private

      def update_profile(key, value)
        data = {}
        data["api_key"] = ENV['ASAKUSA_SATELLITE_API_KEY']
        data["room_id"] = ENV['ASAKUSA_SATELLITE_ROOM']
        data[key] = value
        RestClient.post(ENV['ASAKUSA_SATELLITE_URL'] + "/api/v1/user", data)
      end
    end
  end
end
