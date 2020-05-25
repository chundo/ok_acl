# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'ok_acl/version'

Gem::Specification.new do |spec|
  spec.name          = 'ok_acl'
  spec.version       = OkAcl::VERSION
  spec.authors       = ['chundo']
  spec.email         = ['segundo.espana1@gmail.com']

  spec.summary       = 'User management, control and permissions'
  spec.description   = 'User management, control and permissions'
  spec.homepage      = 'https://github.com/chundo/ok_acl'
  spec.license       = 'MIT'

  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/chundo/ok_acl'
    spec.metadata['changelog_uri'] = 'https://github.com/chundo/ok_acl/CHANGELOG.md'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  # spec.files = Dir.chdir(File.expand_path(__dir__)) do
  #  `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 6.0.3', '>= 6.0.3.1'
  spec.add_development_dependency 'sqlite3'
end
