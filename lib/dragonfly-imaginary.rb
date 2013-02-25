require "dragonfly-imaginary/version"

require "imaginary"
require "open-uri"

module Dragonfly
  module DataStorage
    class ImaginaryStore
      include Dragonfly::Configurable

      configurable_attr :server_url
      configurable_attr :bucket
      configurable_attr :username
      configurable_attr :password
      configurable_attr :secret

      def client
        @client ||= ::Imaginary::Client.new(server_url,
          bucket:   bucket,
          username: username,
          password: password,
          secret: secret)
      end

      def store(temp_object, opts={})
        client.add_image_from_file(temp_object.file)
      end

      def retrieve(uid)
        URI.parse(client.image_url(uid)).read
      end

      def destroy(uid)
        # TODO: implement
      end

      def url_for(uid, options = nil)
        client.image_url(uid, options)
      end
    end
  end
end
