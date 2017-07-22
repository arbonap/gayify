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

class Exception

  original_to_s = instance_method(:to_s)

  define_method :to_s do
    original_message = original_to_s.bind(self).call
    " #{happy}  #{original_message}"
  end
end

def happy
  happy = {
            one: '❤️ 💛 💚 💙 💜 💖',
            two: '💖 💜 💙 💚 💛 ❤️',
            three: '✨ ✨ ✨ ✨ ✨ ✨',
            four: '🌈 🌈 🌈 🌈 🌈 🌈',
            five: '💋 💄 💋 💄 💋 💄',
            six: '👭 👭 👭 👭 👭 👭',
            seven: '👩‍❤️‍👩 👩‍❤️‍👩 👩‍❤️‍👩 👩‍❤️‍👩',
            eight: '🍒 🍓 🍉 🍎 🍍 🍇',
            nine: '⭐️ 🌟 🌙 💫 ✨ ⭐️'
          }
  happy[happy.keys.sample]
end
