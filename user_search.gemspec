lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "user_search/version"

Gem::Specification.new do |spec|
  spec.name          = "user_search"
  spec.version       = UserSearch::VERSION
  spec.authors       = ["Chris Sabaitis"]
  spec.email         = ["chris@christophersabaitis.com"]

  spec.summary       = "provides an easy way to return user emails based on search parameters"
  spec.description   = "iterates through user model and keeps track of emails and created at. returns users created between two dates"
  spec.homepage      = "https://rubygems.org/gems/user_search"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/chrissabaitis"
  spec.metadata["changelog_uri"] = "https://github.com/chrissabaitis/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
