require 'active_support/inflector'

module Gayify
  class Gay
    def self.rainbow
      "🌈"
    end

    def self.pluralize(word)
      word.pluralize
    end
  end
end
