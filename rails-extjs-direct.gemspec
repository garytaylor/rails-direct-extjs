# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rails-extjs-direct}
  s.version = "0.0.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Scott"]
  s.date = %q{2009-09-29}
  s.description = %q{A series of components for implementing the Ext.Direct API specification in Rails 2.3 and higher.
Ext.Direct in Rails is implementede with Rack Middleware.}
  s.email = ["christocracy@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = [".git/HEAD", ".git/config", ".git/description", ".git/hooks/applypatch-msg.sample", ".git/hooks/commit-msg.sample", ".git/hooks/post-commit.sample", ".git/hooks/post-receive.sample", ".git/hooks/post-update.sample", ".git/hooks/pre-applypatch.sample", ".git/hooks/pre-commit.sample", ".git/hooks/pre-rebase.sample", ".git/hooks/prepare-commit-msg.sample", ".git/hooks/update.sample", ".git/info/exclude", ".project", "History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/rails-extjs-direct.rb", "lib/rails-extjs-direct/helpers/direct_controller_helper.rb", "lib/rails-extjs-direct/mixins/action_controller/direct_controller.rb", "lib/rails-extjs-direct/rack/remoting_provider.rb", "lib/rails-extjs-direct/xexception.rb", "lib/rails-extjs-direct/xrequest.rb", "lib/rails-extjs-direct/xresponse.rb", "rails-extjs-direct.gemspec", "script/console", "script/destroy", "script/generate", "test/test_helper.rb", "test/test_rails-extjs-direct.rb"]
  s.homepage = %q{http://rubyforge.org/projects/rails-extjs/}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rails-extjs}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A series of components for implementing the Ext.Direct API specification in Rails 2.3 and higher}
  s.test_files = ["test/test_helper.rb", "test/test_rails-extjs-direct.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.3.0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.3.0"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.3.0"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
