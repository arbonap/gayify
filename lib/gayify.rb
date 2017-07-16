require "gayify/version"
require "gayify/gay"


class Exception
  original_to_s = instance_method(:to_s)

  define_method :to_s do
    original_message = original_to_s.bind(self).call
    "❤️💛💚💙💜💖 : #{original_message}"
  end
end


module Gayify
  # Your code goes here...
end
