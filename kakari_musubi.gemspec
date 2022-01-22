require_relative 'lib/kakari_musubi/version'

Gem::Specification.new do |spec|
  spec.name          = "kakari_musubi"
  spec.version       = KakariMusubi::VERSION
  spec.authors       = ["a5-stable"]
  spec.email         = []

  spec.summary       = %q{Gem for (Old) Japanese syntactic agreement called kakari musubi}
  spec.description   = %q{Gem for (Old) Japanese syntactic agreement called "kakari musubi"}
  spec.homepage      = "https://github.com/a5-stable/kakari_musubi"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["source_code_uri"] = "https://github.com/a5-stable/kakari_musubi"
  spec.metadata["changelog_uri"] = "https://github.com/a5-stable/kakari_musubi/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
