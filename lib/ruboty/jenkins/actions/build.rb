require 'json'
require 'pp'

module Ruboty
  module Jenkins
    module Actions
      class Build < Base
        def call
          build
          report
        end

        private

        def build
          curl = Curl::Easy.new(ENV["JENKINS_URL"])
          curl.http_auth_types = :basic
          curl.username = ENV["JENKINS_USER_ID"]
          curl.password = ENV["JENKINS_API_TOKEN"]
          curl.http_post(curl.url, "data=#{post_options.to_json}")
        end

        def post_options
          {
            repository: given_repository,
            branch: given_branch,
            platform: given_platform,
            editor_version: given_editor_version,
            user: sender_name
          }
        end

        def report
          message.reply("Now building... #{given_repository}/#{given_branch}")
        end

        def given_repository
          message[:repo]
        end

        def given_branch
          message[:branch] || "master"
        end

        def given_platform
          message[:platform] || ""
        end

        def given_editor_version
          message[:editor_version] || ""
        end
      end
    end
  end
end
