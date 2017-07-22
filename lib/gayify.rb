require "gayify/version"
require "gayify/gay"


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

module Gayify
  #gem install gayify --dev allows anyone to get development dependencies intalled.
  #allows people to test a gem without having to fork it or clone it from Github
  
  # Your code goes here...
end
