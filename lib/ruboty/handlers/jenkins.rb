module Ruboty
  module Handlers
    class Jenkins < Base
      env :JENKINS_URL, "Jenkins URL"
      env :JENKINS_USER_ID, "Jenkins User ID"
      env :JENKINS_API_TOKEN, "Jenkins API Token"

      on(
        /build (?<repo>[a-zA-Z0-9_-]+)(?:\/(?<branch>[a-zA-Z0-9_-]+))? ?(?<platform>(?:iOS|Android))? ?(?:(?<editor_version>\b.+))?\z/,
        name: "build",
        description: "Kick build job in Jenkins",
      )

      def build(message)
       Ruboty::Jenkins::Actions::Build.new(message).call
      end
    end
  end
end
