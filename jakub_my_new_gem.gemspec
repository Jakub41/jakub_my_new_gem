
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jakub_my_new_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "jakub_my_new_gem"
  spec.version       = JakubMyNewGem::VERSION
  spec.authors       = ["Jakub"]
  spec.email         = ["jl@a3informatics.com"]

  spec.summary       = %q{Just my first Gem trying.}
  spec.homepage      = "https://github.com/Jakub41/jakub_my_new_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
