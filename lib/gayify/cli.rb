require 'thor'
require 'gayify'

module Gayify
  class CLI < Thor
    desc "spits out a rainbow emoji", "Shows you a rainbow emoji due to the gay agenda"

    def rainbow
      puts Gayify::Gay.rainbow
    end

    desc "pluralize", "Pluralizes a word"
    method_option :word, :aliases => "-w"
    def pluralize
      puts Gayify::Gay.pluralize(options[:word])
    end
  end
end
