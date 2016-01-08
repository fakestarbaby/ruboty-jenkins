module Ruboty
  module Jenkins
    module Actions
      class Base
        attr_reader :message

        def initialize(message)
          @message = message
        end

        private

        def sender_name
          message.from_name
        end
      end
    end
  end
end
