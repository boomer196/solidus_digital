# frozen_string_literal: true

module SolidusDigital
  module TestingSupport
    module Helpers
      def image(filename)
        File.open("#{SolidusDigital::Engine.root}/spec/fixtures/#{filename}")
      end

      def upload_image(filename)
        fixture_file_upload(image(filename).path)
      end
    end
  end
end

RSpec.configure do |config|
  config.include SolidusDigital::TestingSupport::Helpers
end
