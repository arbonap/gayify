# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gayify/version'

Gem::Specification.new do |spec|
  spec.name          = "gayify"
  spec.version       = Gayify::VERSION
  spec.authors       = ["Patricia Arbona"]
  spec.email         = ["arbonap@gmail.com"]

  spec.summary       = %q{A fun gem that adds a rainbow emojis to error messages.}
  spec.description   = %q{Do you ever get upset when you're debugging, and wish your error messages were a bit more encouraging? This fabulous gem gives you positie reenfocement via positive, emoji-filled messages. Keep debugging!}
  spec.homepage      = "https://github.com/arbonap/gayify"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "activesupport"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "thor"
end
